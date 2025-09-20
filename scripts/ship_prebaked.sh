#!/usr/bin/env bash
# ship_prebaked.sh  v1.0
# Usage:
#   bash scripts/ship_prebaked.sh v1.0.3 App/ResourcesPrebaked dist [--release owner/repo]
# Steps:
#   1) Packages payload/, db/, onboarding/, licenses/ into dist/LCES_Prebaked_Bundle_<ver>.zip
#   2) Copies manifest.json to dist/, builds SHASUMS256.txt, verifies hashes
#   3) Copies payload/content.zip and db/lces.sqlite to dist/ (for update channel)
#   4) Builds dist/content-manifest.json (with SHA-256 for content.zip + lces.sqlite)
#   5) (optional) If --release owner/repo and gh is installed, creates a GitHub Release

set -euo pipefail

if [[ $# -lt 3 ]]; then
  echo "Usage: $0 <TAG like v1.0.3> <CONTENT_ROOT> <DIST_DIR> [--release owner/repo]" >&2
  exit 64
fi

TAG="$1"; shift
CONTENT_ROOT="$1"; shift
DIST="${1%/}"; shift

RELEASE_REPO=""
if [[ "${1:-}" == "--release" ]]; then
  RELEASE_REPO="${2:-}"
  [[ -n "$RELEASE_REPO" ]] || { echo "ERROR: --release requires owner/repo" >&2; exit 64; }
fi

VER="${TAG#v}"

# ---- sanity checks ----
for d in payload db onboarding licenses; do
  [[ -d "$CONTENT_ROOT/$d" ]] || { echo "ERROR: Missing $CONTENT_ROOT/$d" >&2; exit 2; }
done

mkdir -p "$DIST"

# ---- package the prebaked bundle zip ----
ZIPNAME="LCES_Prebaked_Bundle_${VER}.zip"
(
  cd "$CONTENT_ROOT"
  # reproducible-ish zip (exclude Mac cruft)
  zip -r "../$DIST/$ZIPNAME" payload db onboarding licenses -x "__MACOSX/*" -x "*.DS_Store" >/dev/null
)
echo "Created $DIST/$ZIPNAME"

# ---- copy manifest(s) to dist ----
if [[ -f "$CONTENT_ROOT/payload/manifest.json" ]]; then
  cp "$CONTENT_ROOT/payload/manifest.json" "$DIST/manifest.json"
  cp "$CONTENT_ROOT/payload/manifest.json" "$DIST/manifest-${VER}.json"
fi

# ---- stage update assets alongside (content.zip + lces.sqlite) ----
if [[ -f "$CONTENT_ROOT/payload/content.zip" ]]; then
  cp "$CONTENT_ROOT/payload/content.zip" "$DIST/content.zip"
fi
if [[ -f "$CONTENT_ROOT/db/lces.sqlite" ]]; then
  cp "$CONTENT_ROOT/db/lces.sqlite" "$DIST/lces.sqlite"
fi

# ---- build SHASUMS256.txt (zip + manifests + update assets) ----
pushd "$DIST" >/dev/null
: > SHASUMS256.txt

hash_file() {
  local f="$1"
  if command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$f" | awk '{print $1"  "$2}' >> SHASUMS256.txt
  elif command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$f" >> SHASUMS256.txt
  else
    # Python fallback
    python3 - "$f" >> SHASUMS256.txt <<'PY'
import sys, hashlib, os
p=sys.argv[1]; h=hashlib.sha256()
with open(p,'rb') as f:
  for chunk in iter(lambda:f.read(8192), b''): h.update(chunk)
print(h.hexdigest()+"  "+os.path.basename(p))
PY
  fi
}

for f in "$ZIPNAME" manifest.json "manifest-${VER}.json" content.zip lces.sqlite; do
  [[ -f "$f" ]] && hash_file "$f"
done

# ---- verify checksums ----
if command -v shasum >/dev/null 2>&1; then
  shasum -a 256 -c SHASUMS256.txt
elif command -v sha256sum >/dev/null 2>&1; then
  sha256sum -c SHASUMS256.txt
else
  echo "INFO: no shasum/sha256sum available; manual verify needed" >&2
fi

# ---- build content-manifest.json for update channel ----
python3 - <<PY
import json, os, hashlib
ver = "${VER}"
def sha(p):
  h=hashlib.sha256()
  with open(p,"rb") as f:
    for c in iter(lambda:f.read(8192), b""): h.update(c)
  return h.hexdigest(), os.path.getsize(p)

files=[]
for name in ("content.zip","lces.sqlite"):
  if os.path.exists(name):
    digest,size = sha(name)
    files.append({"name":name,"size":size,"sha256":digest})

cv={"lc":"4.5","fg":"5.0"}
try:
  with open("manifest.json","r",encoding="utf-8") as f:
    cv = json.load(f).get("contentVersion", cv)
except Exception:
  pass

manifest={
  "schema": 1,
  "bundleVersion": ver,
  "contentVersion": cv,
  "files": files
}
with open("content-manifest.json","w",encoding="utf-8") as w:
  json.dump(manifest, w, indent=2)
print("Wrote content-manifest.json")
PY
popd >/dev/null

echo "Artifacts in $DIST:"
ls -lh "$DIST"

# ---- optional: create GitHub Release with gh CLI ----
if [[ -n "$RELEASE_REPO" ]]; then
  command -v gh >/dev/null 2>&1 || { echo "ERROR: gh CLI not found; install https://cli.github.com/" >&2; exit 3; }
  echo "Creating GitHub Release $TAG on $RELEASE_REPO ..."
  gh release create "$TAG" \
    "$DIST/$ZIPNAME" \
    "$DIST/manifest.json" \
    "$DIST/manifest-${VER}.json" \
    "$DIST/SHASUMS256.txt" \
    "$DIST/content-manifest.json" \
    --repo "$RELEASE_REPO" \
    --title "LCES $VER — prebaked bundle" \
    --notes "Prebaked offline bundle (manifest, checksums, update assets)."
  echo "Release created."
fi

echo "✅ Ship complete."
chmod +x scripts/ship_prebaked.sh
bash scripts/ship_prebaked.sh v1.0.3 App/ResourcesPrebaked dist
bash scripts/ship_prebaked.sh v1.0.3 App/ResourcesPrebaked dist --release OWNER/REPO
VERSION ?= 1.0.3
TAG     ?= v$(VERSION)
ROOT    ?= App/ResourcesPrebaked
DIST    ?= dist
REPO    ?=

.PHONY: package checksums verify manifest ship clean

package:
	@bash scripts/ship_prebaked.sh $(TAG) $(ROOT) $(DIST)

ship:
	@bash scripts/ship_prebaked.sh $(TAG) $(ROOT) $(DIST) --release $(REPO)

clean:
	@rm -rf $(DIST)
    
    make package VERSION=1.0.3 ROOT=App/ResourcesPrebaked DIST=dist
# or
make ship VERSION=1.0.3 ROOT=App/ResourcesPrebaked DIST=dist REPO=OWNER/REPO
Param(
  [Parameter(Mandatory=$true)][string]$Tag,             # e.g. v1.0.3
  [Parameter(Mandatory=$true)][string]$ContentRoot,     # e.g. App/ResourcesPrebaked
  [Parameter(Mandatory=$true)][string]$Dist,            # e.g. dist
  [string]$ReleaseRepo                                  # OWNER/REPO (optional)
)

$ErrorActionPreference = "Stop"
$Ver = $Tag.TrimStart('v')

New-Item -ItemType Directory -Force -Path $Dist | Out-Null

# Zip prebaked bundle
$zipPath = Join-Path $Dist "LCES_Prebaked_Bundle_$Ver.zip"
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($ContentRoot, $zipPath)

# Copy manifests
Copy-Item -Force (Join-Path $ContentRoot "payload/manifest.json") (Join-Path $Dist "manifest.json")
Copy-Item -Force (Join-Path $ContentRoot "payload/manifest.json") (Join-Path $Dist "manifest-$Ver.json")

# Copy update assets
Copy-Item -Force (Join-Path $ContentRoot "payload/content.zip") (Join-Path $Dist "content.zip")
Copy-Item -Force (Join-Path $ContentRoot "db/lces.sqlite")      (Join-Path $Dist "lces.sqlite")

# Checksums
$sumPath = Join-Path $Dist "SHASUMS256.txt"
if (Test-Path $sumPath) { Remove-Item $sumPath -Force }
Get-ChildItem $Dist | ? { $_.Name -in "LCES_Prebaked_Bundle_$Ver.zip","manifest.json","manifest-$Ver.json","content.zip","lces.sqlite" } | %{
  $h = (Get-FileHash $_.FullName -Algorithm SHA256).Hash.ToLower()
  Add-Content $sumPath "$h  $($_.Name)"
}

# Verify
Get-Content $sumPath | %{
  $parts = $_ -split "\s\s",2
  $hash = $parts[0]; $name = $parts[1]
  $calc = (Get-FileHash (Join-Path $Dist $name) -Algorithm SHA256).Hash.ToLower()
  if ($calc -ne $hash) { throw "Hash mismatch: $name" }
}

# Build content-manifest.json
$contentManifest = @{
  schema = 1
  bundleVersion = $Ver
  contentVersion = @{ lc = "4.5"; fg = "5.0" }
  files = @()
}
foreach ($f in @("content.zip","lces.sqlite")) {
  $p = Join-Path $Dist $f
  if (Test-Path $p) {
    $h = (Get-FileHash $p -Algorithm SHA256).Hash.ToLower()
    $s = (Get-Item $p).Length
    $contentManifest.files += @{ name = $f; size = $s; sha256 = $h }
  }
}
($contentManifest | ConvertTo-Json -Depth 5) | Out-File -Encoding utf8 (Join-Path $Dist "content-manifest.json")

# Optional GitHub Release
if ($ReleaseRepo) {
  if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { throw "gh CLI not found" }
  gh release create $Tag `
    (Join-Path $Dist "LCES_Prebaked_Bundle_$Ver.zip") `
    (Join-Path $Dist "manifest.json") `
    (Join-Path $Dist "manifest-$Ver.json") `
    (Join-Path $Dist "SHASUMS256.txt") `
    (Join-Path $Dist "content-manifest.json") `
    --repo $ReleaseRepo `
    --title "LCES $Ver — prebaked bundle" `
    --notes "Prebaked offline bundle (manifest, checksums, update assets)."
}
Write-Host "Ship complete."
powershell -ExecutionPolicy Bypass -File scripts/ship_prebaked.ps1 -Tag v1.0.3 -ContentRoot App/ResourcesPrebaked -Dist dist
# or with release:
powershell -ExecutionPolicy Bypass -File scripts/ship_prebaked.ps1 -Tag v1.0.3 -ContentRoot App/ResourcesPrebaked -Dist dist -ReleaseRepo OWNER/REPO


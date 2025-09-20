#!/usr/bin/env bash
# package_prebaked.sh <TAG_NAME> [CONTENT_ROOT=App/ResourcesPrebaked] [DIST_DIR=dist]
set -euo pipefail

TAG_NAME="${1:-v0.0.0}"
CONTENT_ROOT="${2:-App/ResourcesPrebaked}"
DIST="${3:-dist}"
VERSION="${TAG_NAME#v}"

# required subfolders
for d in payload db onboarding licenses; do
  [[ -d "$CONTENT_ROOT/$d" ]] || { echo "ERROR: Missing $CONTENT_ROOT/$d" >&2; exit 2; }
done

mkdir -p "$DIST"

ZIPNAME="LCES_Prebaked_Bundle_${VERSION}.zip"
(
  cd "$CONTENT_ROOT"
  zip -r "../$DIST/$ZIPNAME" payload db onboarding licenses -x "__MACOSX/*" -x "*.DS_Store" >/dev/null
)
echo "Created $DIST/$ZIPNAME"

# copy manifest(s)
if [[ -f "$CONTENT_ROOT/payload/manifest.json" ]]; then
  cp "$CONTENT_ROOT/payload/manifest.json" "$DIST/manifest.json"
  cp "$CONTENT_ROOT/payload/manifest.json" "$DIST/manifest-$VERSION.json"
fi
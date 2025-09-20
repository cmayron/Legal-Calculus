#!/usr/bin/env python3
# checksums_sha256.py <DIST_DIR>
import sys, os, hashlib

dist = sys.argv[1] if len(sys.argv) > 1 else "dist"
paths = []
for name in os.listdir(dist):
    if name.endswith(".zip") or name.startswith("manifest") or name in ("content.zip","lces.sqlite"):
        paths.append(os.path.join(dist, name))

out = os.path.join(dist, "SHASUMS256.txt")
with open(out, "w", encoding="utf-8") as w:
    for p in sorted(paths):
        h = hashlib.sha256()
        with open(p, "rb") as f:
            for chunk in iter(lambda: f.read(8192), b""):
                h.update(chunk)
        w.write(f"{h.hexdigest()}  {os.path.basename(p)}\n")
print(f"Wrote {out}")
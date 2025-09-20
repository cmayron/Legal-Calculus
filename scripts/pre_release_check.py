#!/usr/bin/env python3
# pre_release_check.py <CONTENT_ROOT>
import sys, os, json

root = sys.argv[1] if len(sys.argv) > 1 else "App/ResourcesPrebaked"
req = ["payload", "db", "onboarding", "licenses"]
missing = [d for d in req if not os.path.isdir(os.path.join(root, d))]
if missing:
    print("ERROR: Missing directories:", ", ".join(missing)); raise SystemExit(2)

mf = os.path.join(root, "payload", "manifest.json")
if not os.path.isfile(mf):
    print("ERROR: payload/manifest.json not found"); raise SystemExit(3)

try:
    with open(mf, "r", encoding="utf-8") as f:
        m = json.load(f)
except Exception as e:
    print("ERROR: Unable to parse manifest.json:", e); raise SystemExit(4)

counts = m.get("counts", {})
print("Pre-release check OK. counts:", counts)
# LCES Base Map + Version Manifest
*Prepared: September 24, 2025*

## Purpose
Keep a single, stable map for the Legal Calculus Ecosystem (LCES) while allowing continuous updates. Anchors stay fixed; content is versioned in place with a short change log.

## Streams (Stable Anchors)
- **LC — Legal Calculus (core):** Foundations + Modules 1–119; constitutional framing; PI/TRO; filing hygiene.
- **LCa — Lawyer Calculus (adversarial):** Off‑ramp taxonomy; strike/serial defenses; appellate preservation; record craft.
- **JC — Judicial Calculus (court behavior):** Discretion patterns; abstention gates (Younger/RF); Rule 52 findings; JC vs. LC off‑ramp closure.
- **FG — Field Guide (task cards):** One‑page action cards: serve, lodge, oppose, reply, COS, TOA, etc.
- **FGA — Field Guide Advanced (deep cards):** Evidentiary matrices; timelines; pretext proofs; NPDB/Part 60; due‑process plays.

## Versioning
Semantic bumps: **MAJOR** X.0 (structural), **MINOR** X.Y (new module/section), **PATCH** X.Y.Z (edits/clarity). Example: LC 4.5 → 4.5.1.

## Update Protocol
- Keep stream anchors/slugs fixed.  
- Edit in place; bump version; append a 3‑line change log (what/why/date).  
- Cross‑ref: when JC changes off‑ramp rules, echo a one‑liner in LC/LCa/FG where used.  
- PR title: `[LCES] <Stream/Module> :: <Short change>` (include before/after bullets).  
- Artifacts generated together: Word (authoritative), Markdown (docs), PDF (distribution).

## Change‑Log Template (per page/file)
Version 4.5.1  •  Date 2025‑09‑24  •  Author CM/GPT‑5  
What changed (1–2 lines)  
Why (1 line)  
Impact: links to affected cards/streams

## Repo & Slugs (stable)
`/LC`, `/LCa`, `/JC`, `/FG`, `/FGA`  •  Cards: `fg-###`  •  Modules: `lc-###`

## Next Steps
1. Upload this `.docx` to the repo root and link it from `README.md`.  
2. Add a small changelog block to LC/JC/FG landing pages.  
3. Later, add `manifests/index.json` for app use.

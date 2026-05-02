# Legal Calculus — Framework Quickstart Checklist (v4.5)

**Purpose**: Turn “I think I have a case” into clean filings, evidence‑driven arguments, and preserved rights.

**Use with**: `lc-template-pack-v45.zip` (complaint/motion/hearing templates, evidence tables, deadline grids).

---

## Produce these 3 artifacts first (one sitting)

1) **Claim → Element → Proof Table** (map each element to facts + exhibits + record cite)  
2) **Procedural Deadline Grid** (service, motions, appeal clocks, SOL)  
3) **Exhibit Index (with purpose tags)** (“proves ___”)  

Everything else flows from these.

---

## Fast path (60–90 minutes)

- Scope your **claim** and relief → open *Relief Matrix* in the template pack  
- Draft facts → build the **Element/Proof Table**  
- Open **Procedural Grid** → add triggers & due dates  
- Build **Exhibit Index** with short “proves …” tags  
- Pick the right **filing kit** (complaint / TRO–PI / reconsideration / appeal notice)  
- Add **certificate of service** + **proposed order** skeleton  
- Save to repo with a short **archive manifest** (version, hash, dates)

---

## Filing discipline (what makes this “court‑ready”)

- **Non‑conclusory**: every element has facts + exhibit support.  
- **Tailored relief**: scope matches harm + evidence; bonding discussed if needed.  
- **deadlines**: service/response/appeal clocks visible on one page.  
- **Exhibits**: numbered, stamped, each with a one‑line purpose.  
- **Preservation**: objections, grounds, and cites recorded for appeal.  
- **Archive**: immutable copy with SHA‑256 and a manifest (who/when/what).

---

## Typical failure modes this avoids

- Elements asserted without proof; exhibits that “exist” but prove nothing.  
- Asking for relief the record won’t support.  
- Missed deadlines, bad service, or lost appeal issues.  

---

## Repo drop‑in

- Put this file at repo root: **`lc-framework-quickstart-checklist-v45.md`**
- Put the bundle alongside it: **`lc-template-pack-v45.zip`**
- Suggested tree:

```
/ (repo root)
├─ lc-framework-quickstart-checklist-v45.md
├─ lc-template-pack-v45.zip
└─ /cases/<YourCase>/
   ├─ pleadings/
   ├─ exhibits/
   ├─ service/
   └─ archive/
```

> **Disclaimer**: Educational scaffolding, not legal advice. Check local rules.

*Last updated: 2025-09-22*  
*Legal Calculus v4.5 — “Filing is protest. Format is memory. The record is the remedy.”*

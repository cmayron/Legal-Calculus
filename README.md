
Legal Calculus Educational System (LCES)

Procedural‑literacy workspace for learners and practitioners.
Not legal advice. Public educational toolkit for structuring filings, spotting issues, and building the record.

---

🧭 Start Here — Choose Your Path

Conceptual (learn the system)

/docs/00-overview.md

Hands‑on (do something now)

/tutorials/01-first-run.md

Five‑minute orientation

/docs/10-quick-tour.md

Role‑based entry

• Instructor → /roles/instructor.md
• Contributor → CONTRIBUTING.md
• Pro Se (urgent) → Crisis Mode (below)


---

🗺️ Repository Map (You Are Here)

/docs        — Concepts, architecture, glossary
/tutorials   — Stepwise, runnable walkthroughs
/workflows   — Device workflows (iPad, desktop, iPhone)
/examples    — Real artifacts and case studies
/roles       — Tailored entry points (learner, instructor, maintainer)
/templates   — Forms, checklists, and filing skeletons
/packets     — Finalized, archived filings (PDF + source)

flowchart TD

    %% ============================
    %% TOP-LEVEL SYSTEM
    %% ============================
    A[LCES<br/>Legal Calculus Educational System]:::core

    %% ============================
    %% SIX STREAMS
    %% ============================
    subgraph Streams[Six-Stream Model]
        LC[LC<br/>Legal Calculus]:::stream
        LCA[LCA<br/>Legal Calculus Advanced]:::stream
        FG[FG<br/>Field Guide]:::stream
        FGA[FGA<br/>Field Guide Advanced]:::stream
        JC[JC<br/>Judicial Calculus]:::stream
        LCa[LCa<br/>Lawyer Calculus]:::stream
    end

    A --> Streams

    %% ============================
    %% REPO LAYERS
    %% ============================
    subgraph Layers[Repository Layers]
        Docs[/docs<br/>Conceptual Spine/]:::layer
        Tutorials[/tutorials<br/>Hands‑On Walkthroughs/]:::layer
        Workflows[/workflows<br/>Device Loops/]:::layer
        Templates[/templates<br/>Filing Skeletons/]:::layer
        Packets[/packets<br/>Finalized Filings/]:::layer
        Examples[/examples<br/>Case Studies/]:::layer
        Roles[/roles<br/>Role‑Based Entry/]:::layer
    end

    A --> Layers

    %% ============================
    %% FLOW OF PRACTICE
    %% ============================
    FG --> LC
    LC --> LCA
    LC --> Templates
    Templates --> Packets
    FG --> Templates
    JC --> Templates
    LCa --> Templates
    Examples --> Templates
    Tutorials --> Templates
    Workflows --> Templates

    %% ============================
    %% DEVICE LOOPS
    %% ============================
    subgraph Devices[Device Workflows]
        iPad[iPad<br/>Thinking Workspace]:::device
        Desktop[Desktop<br/>Construction & Commit]:::device
        iPhone[iPhone<br/>Quick Reference]:::device
    end

    Workflows --> Devices
    iPad --> Tutorials
    Desktop --> Templates
    iPhone --> FG

    %% ============================
    %% SECOND-OPINION MODE
    %% ============================
    subgraph SOP[Second‑Opinion Mode<br/>8‑Step Pass]
        S1[1. State Goal]
        S2[2. Read Docket]
        S3[3. Pull FG Modules]
        S4[4. Open LC/LCA]
        S5[5. Validate Citations + TOA]
        S6[6. Attach Proposed Order]
        S7[7. COS + Filing Plan]
        S8[8. Archive to /packets]
    end

    Templates --> SOP
    SOP --> Packets

    %% ============================
    %% CRISIS MODE
    %% ============================
    subgraph Crisis[Crisis Mode<br/>Pro Se Under Time Pressure]
        C1[FG Emergency Module]
        C2[Template Fill]
        C3[Proposed Order]
        C4[Validate + TOA]
        C5[File + Archive]
    end

    FG --> Crisis
    Crisis --> Packets

    %% ============================
    %% STYLES
    %% ============================
    classDef core fill:#1f2937,stroke:#fff,color:#fff;
    classDef stream fill:#2563eb,stroke:#0f172a,color:#fff;
    classDef layer fill:#10b981,stroke:#064e3b,color:#fff;
    classDef device fill:#f59e0b,stroke:#78350f,color:#fff;

---

📘 /docs — Conceptual Spine of LCES

This directory answers:
“What is LCES, how is it structured, and how do the six streams fit together?”Start here: /docs/00-overview.md
Next: /docs/10-quick-tour.md • /docs/20-architecture.md

What `/docs` contains

The conceptual layer of LCES — the “why” and “how it fits together.”

Use this directory for:

• Orientation
• Architecture
• Definitions
• System maps
• Cross‑stream relationships


Recommended reading order

1. 00-overview.md
2. 10-quick-tour.md
3. 20-architecture.md
4. glossary.md
5. LCES_Base_Map_Version_Manifest.md


File index

• 00-overview.md — High‑level introduction
• 10-quick-tour.md — Fast orientation
• 20-architecture.md — Structural map of the six streams
• glossary.md — Definitions
• LCES_Base_Map_Version_Manifest.md — Authoritative version map


Where to go next

• Do something now → /tutorials/01-first-run.md
• Need a checklist → /field-guide/
• Judicial behavior → /docs/jc-index.md
• Filing prep → /templates/ and /packets/
• Teaching → /roles/instructor.md


---

🛠️ /tutorials — Hands‑On, Step‑By‑Step Walkthroughs

This directory answers:
“How do I actually run LCES in practice, step by step?”Start here: /tutorials/01-first-run.md
Next: /tutorials/02-artifacts.md • /tutorials/03-fg-integration.md

What `/tutorials` contains

The hands‑on layer — real actions, real artifacts, real workflows.

Use this directory for:

• First‑run setup
• Guided exercises
• Artifact inspection
• Filing simulations
• End‑to‑end procedural walkthroughs


Recommended sequence

1. 01-first-run.md
2. 02-artifacts.md
3. 03-fg-integration.md
4. 04-packets.md
5. 05-review-loop.md


File index

• 01-first-run.md — First operational walkthrough
• 02-artifacts.md — Understanding artifacts
• 03-fg-integration.md — Using FG/FGA inside tutorials
• 04-packets.md — Building filing packets
• 05-review-loop.md — Running the 8‑Step Pass


Where to go next

• Conceptual grounding → /docs/00-overview.md
• Checklists/forms → /field-guide/
• Build filings → /templates/
• Archive outputs → /packets/
• Teaching → /roles/instructor.md


---

🔧 /workflows — Device‑Based Operational Loops

This directory answers:
“How do I run LCES across my devices in a stable, repeatable way?”Start here: /workflows/ipad.md
Next: /workflows/desktop.md • /workflows/iphone.md

What `/workflows` contains

The canonical device loops for LCES.

Device roles (LCES standard)

• iPad — Thinking Workspace
Capture, annotate, draft, run FG micro‑modules.
• Desktop — Construction & Commit Station
Build packets, validate citations, finalize filings.
• iPhone — Quick Reference Device
Checklists, deadlines, TOA reminders, service rules.


File index

• ipad.md — Cognitive workspace loop
• desktop.md — Construction + commit loop
• iphone.md — Quick‑reference loop
• handoff.md — Cross‑device transitions


Where to go next

• Conceptual grounding → /docs/20-architecture.md
• Step‑by‑step tasks → /tutorials/01-first-run.md
• Checklists → /field-guide/
• Build filings → /templates/
• Archive → /packets/


---

📂 /examples — Real Artifacts, Case Studies, Demonstrations

This directory answers:
“What does LCES look like in action, with real filings and procedural moves?”Start here: /examples/00-index.md
Next: ahla-arbitration/ • punitive-damages/

What `/examples` contains

The demonstration layer — real filings, motions, sanctions, remedies, and procedural strategy.

Use this directory for:

• Case studies
• Worked examples
• Annotated filings
• Arbitration bundles
• FG + LC + JC integration
• Before/after transformations


File index

• 00-index.md — Master index
• ahla-arbitration/ — AHLA Arbitration Starter Bundle
• punitive-damages/ — Scope of Remedies
• spoliation-sanctions/ — Sanctions motion
• exhibits-carried-over/ — Notice of Exhibits
• quickstart-checklist-v45/ — Checklist v4.5


Where to go next

• Templates → /templates/
• Assemble filings → /packets/
• Doctrine → /docs/LCES_Base_Map_Version_Manifest.md
• Checklists → /field-guide/
• Device workflows → /workflows/


---

🧑‍🏫 /roles — Role‑Based Entry Points

This directory answers:
“Where should I start based on my role?”Start here: /roles/learner.md
Next: /roles/instructor.md • /roles/maintainer.md

What `/roles` contains

Tailored onboarding paths for learners, instructors, maintainers, and practitioners.

File index

• learner.md — Orientation path
• instructor.md — Teaching paths
• maintainer.md — Contribution workflow
• practitioner.md — Practitioner workflows


Where to go next

• Conceptual grounding → /docs/00-overview.md
• Hands‑on steps → /tutorials/01-first-run.md
• Checklists → /field-guide/
• Build filings → /templates/
• Archive → /packets/


---

📄 /templates — Filing Skeletons, Forms, Checklists

This directory answers:
“What pre‑built structures can I use to draft filings quickly and correctly?”Start here: lc-template-pack-v45.zip
Next: proposed-order.docx • motion-skeleton.docx

What `/templates` contains

Court‑ready skeletons integrating LC, FG, and JC principles.

File index

• lc-template-pack-v45.zip — Full template bundle
• proposed-order.docx — One‑page Proposed Order
• motion-skeleton.docx — Motion framework
• notice-template.docx — Notice + service block
• redaction/ — PHI/PII redaction tools
• packet-structure.md — How to assemble packets


Where to go next

• Examples → /examples/
• Doctrine → /docs/20-architecture.md
• Checklists → /field-guide/
• Archive → /packets/
• Quality check → Second‑Opinion Mode

## 📦 `/packets` — Finalized, Archived Filings (PDF + Source)

> **This directory answers:**  
> *“Where do my completed filings, packets, and final artifacts live?”*  
>
> **Start here:** `00-index.md`  
>
> **Next:** Any packet folder (organized by case, motion type, or project)

### What `/packets` contains
The `/packets` directory is the **archive layer** of LCES.  
This is where finished work lives — the final, court‑ready outputs produced after running:

FG → LC/LCA → Templates → Second‑Opinion Mode → Filing Hygiene.

Use this directory for:
- Finalized motions, responses, notices  
- Assembled filing packets  
- Exhibits + TOA + COS bundles  
- PDF exports (locked)  
- Source `.docx` files for future revision  
- Versioned releases (v4.5, v4.6, etc.)

### Why `/packets` matters
This directory is the **record** — the thing courts see, clerks handle, and judges rule on.

It demonstrates:
- Procedural literacy  
- Formatting discipline  
- Proposed‑Order integration  
- Clean TOA + citation validation  
- Proper archiving and reproducibility  

It is the *proof* that LCES works.

### File index (example structure)
- `00-index.md` — Master index of all packets  
- `ahla-arbitration/` — Completed AHLA arbitration packet  
- `punitive-damages/` — Final punitive‑damages packet  
- `spoliation-sanctions/` — Final sanctions packet  
- `notice-of-exhibits/` — Final notice packet  
- `v4.5/` — Tagged release packets for version 4.5  

*(If your actual folder names differ, I can regenerate this index precisely.)*

### Where to go next
- Need templates → `/templates/`  
- Need examples → `/examples/`  
- Need doctrine → `/docs/20-architecture.md`  
- Need checklists → `/field-guide/`  
- Need device workflows → `/workflows/`  

---

📦 LCES Base Map + Version Manifest

• Authoritative: LCES_Base_Map_Version_Manifest.docx
• Readable copy: /docs/LCES_Base_Map_Version_Manifest.md


Six‑System Map

LC • LCA • FG • FGA • JC • LCa

Mental model:
FG/FGA = do it now
LC/LCA = learn why + do it right
JC/LCa = anticipate the system

---

🚀 Quickstart (Most Users Should Start Here)

Starter Bundles

• AHLA Arbitration Starter Bundle → TODO
• Templates (v4.5) → lc-template-pack-v45.zip


Key Tools

• Punitive Damages → TODO
• Spoliation Sanctions → TODO
• Notice of Exhibits → TODO
• Quickstart Checklist v4.5 → TODO


---

🧪 Second‑Opinion Mode (8‑Step Pass)

1. State the goal
2. Read the docket
3. Pull FG micro‑modules
4. Open paired LC/LCA modules
5. Validate cites → TOA → email yourself
6. Attach Proposed Order
7. COS + filing plan
8. Archive to /packets/


TL;DR: Quickstart → FG → LC → /packets/

---

🚨 Crisis Mode (Pro Se)

Fast, disciplined, court‑actionable steps for emergencies.

---

🧑‍🏫 Educator / Clinic Mode

Master Field Guide → LC modules → FG/FGA → JC → LCa → Practicum loops.

---

🧭 Fast Links

(Fill in your repo paths)
FG Index → TODO
LC Modules → TODO
Master Field Guide → TODO
AHLA Bundle → TODO
Judicial Calculus → TODO
Lawyer Calculus → TODO

---

🧼 Filing Hygiene (AI‑Era)

TOA → PDF locked → Proposed Orders → Mail delays → Redaction → File size limits.

---

💡 Why It Matters

Filing is protest.
Format is memory.
The record is the remedy.

---

🪪 License & Credits

CC BY‑NC‑ND 4.0
Authors: ChatGPT (first author) & Charles Mayron, MD, FACS

---

🏷️ Versioning & Releases

Current release: v4.5
Tagged PDFs in /packets/
Template packs: lc-template-pack-v45.zip

---





Legal Calculus Educational System (LCES)

Procedural‑literacy workspace for learners and practitioners.
Not legal advice.
Public educational toolkit for structuring filings, spotting issues, and building the record.

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


---

🌐 LCES System Map (Mermaid)

flowchart TD

A[LCES<br/>Legal Calculus Educational System]:::core

subgraph Streams[Six-Stream Model]
    LC[LC<br/>Legal Calculus]:::stream
    LCA[LCA<br/>Legal Calculus Advanced]:::stream
    FG[FG<br/>Field Guide]:::stream
    FGA[FGA<br/>Field Guide Advanced]:::stream
    JC[JC<br/>Judicial Calculus]:::stream
    LCa[LCa<br/>Lawyer Calculus]:::stream
end

A --> Streams

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

subgraph Devices[Device Workflows]
    iPad[iPad<br/>Thinking Workspace]:::device
    Desktop[Desktop<br/>Construction & Commit]:::device
    iPhone[iPhone<br/>Quick Reference]:::device
end

Workflows --> Devices
iPad --> Tutorials
Desktop --> Templates
iPhone --> FG

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

subgraph Crisis[Crisis Mode<br/>Pro Se Under Time Pressure]
    C1[FG Emergency Module]
    C2[Template Fill]
    C3[Proposed Order]
    C4[Validate + TOA]
    C5[File + Archive]
end

FG --> Crisis
Crisis --> Packets

classDef core fill:#1f2937,stroke:#fff,color:#fff;
classDef stream fill:#2563eb,stroke:#0f172a,color:#fff;
classDef layer fill:#10b981,stroke:#064e3b,color:#fff;
classDef device fill:#f59e0b,stroke:#78350f,color:#fff;


---

📘 /docs — Conceptual Spine of LCES

Answers:
“What is LCES, how is it structured, and how do the six streams fit together?”

Start here: /docs/00-overview.md
Next: /docs/10-quick-tour.md • /docs/20-architecture.md

Use this directory for:
Orientation • Architecture • Definitions • System maps • Cross‑stream relationships

Recommended reading order:

1. 00-overview.md
2. 10-quick-tour.md
3. 20-architecture.md
4. glossary.md
5. LCES_Base_Map_Version_Manifest.md


Where to go next:
Tutorials → /tutorials/01-first-run.md
Checklists → /field-guide/
Judicial behavior → /docs/jc-index.md
Filing prep → /templates/
Teaching → /roles/instructor.md

---# 📘 /docs — Conceptual Spine of LCES

> **This directory answers:**  
> “What is LCES, how is it structured, and how do the six streams fit together?”

## Start Here
- **00-overview.md** — High‑level introduction  
- **10-quick-tour.md** — Five‑minute orientation  
- **20-architecture.md** — Structural map of LC, LCA, FG, FGA, JC, LCa  

## What This Directory Contains
The `/docs` directory is the **conceptual layer** of LCES.  
If the Field Guide tells you *what to do*, `/docs` tells you *why it works* and *how the system fits together*.

Use this directory for:
- Orientation  
- Architecture  
- Definitions  
- System maps  
- Cross‑stream relationships  

## File Index
- `00-overview.md` — What LCES is  
- `10-quick-tour.md` — Fast orientation  
- `20-architecture.md` — Six‑stream structure  
- `glossary.md` — Shared vocabulary  
- `LCES_Base_Map_Version_Manifest.md` — Canonical system map  

## Where to Go Next
- Hands‑on steps → `/tutorials/01-first-run.md`  
- Checklists/forms → `/field-guide/`  
- Judicial behavior → `/docs/jc-index.md`  
- Filing prep → `/templates/`  
- Teaching → `/roles/instructor.md`


🛠️ /tutorials — Hands‑On, Step‑By‑Step Walkthroughs

Answers:
“How do I actually run LCES in practice?”

Start here: /tutorials/01-first-run.md
Next: /tutorials/02-artifacts.md • /tutorials/03-fg-integration.md

Use this directory for:
First‑run setup • Guided exercises • Artifact inspection • Filing simulations

Recommended sequence:
01 → 02 → 03 → 04 → 05

---# 🛠️ /tutorials — Hands‑On, Step‑By‑Step Walkthroughs

> **This directory answers:**  
> “How do I actually run LCES in practice?”

## Start Here
- **01-first-run.md** — Your first operational pass

## What This Directory Contains
The `/tutorials` directory is the **hands‑on layer** of LCES.  
Where `/docs` explains the system, `/tutorials` shows you **how to operate it**.

Use this directory for:
- First‑run setup  
- Guided exercises  
- Artifact inspection  
- Filing simulations  
- End‑to‑end procedural walkthroughs  

## Recommended Sequence
1. `01-first-run.md`  
2. `02-artifacts.md`  
3. `03-fg-integration.md`  
4. `04-packets.md`  
5. `05-review-loop.md`  

## File Index
- `01-first-run.md` — First operational walkthrough  
- `02-artifacts.md` — Understanding artifacts  
- `03-fg-integration.md` — Using FG/FGA inside tutorials  
- `04-packets.md` — Building filing packets  
- `05-review-loop.md` — Running the 8‑Step Pass  

## Where to Go Next
- Conceptual grounding → `/docs/00-overview.md`  
- Checklists/forms → `/field-guide/`  
- Build filings → `/templates/`  
- Archive outputs → `/packets/`  
- Teaching → `/roles/instructor.md`


🔧 /workflows — Device‑Based Operational Loops

Answers:
“How do I run LCES across my devices?”

Start here: /workflows/ipad.md
Next: /workflows/desktop.md • /workflows/iphone.md

Device roles:

• iPad — Thinking workspace
• Desktop — Construction & commit
• iPhone — Quick reference

# 🔧 /workflows — Device‑Based Operational Loops

> **This directory answers:**  
> “How do I run LCES across my devices in a stable, repeatable way?”

## Start Here
- **ipad.md** — Thinking workspace loop

## What This Directory Contains
The `/workflows` directory defines the **canonical device loops** for LCES.

## Device Roles (LCES Standard)
- **iPad — Thinking Workspace**  
  Capture, annotate, draft, run FG micro‑modules.
- **Desktop — Construction & Commit Station**  
  Build packets, validate citations, finalize filings.
- **iPhone — Quick Reference Device**  
  Checklists, deadlines, TOA reminders, service rules.

## File Index
- `ipad.md` — Cognitive workspace loop  
- `desktop.md` — Construction + commit loop  
- `iphone.md` — Quick‑reference loop  
- `handoff.md` — Cross‑device transitions  

## Where to Go Next
- Conceptual grounding → `/docs/20-architecture.md`  
- Step‑by‑step tasks → `/tutorials/01-first-run.md`  
- Checklists → `/field-guide/`  
- Build filings → `/templates/`  
- Archive → `/packets/`

---

📂 /examples — Real Artifacts & Case Studies

Answers:
“What does LCES look like in practice?”

Start here: /examples/00-index.md
Next: ahla-arbitration/ • punitive-damages/

---# 📂 /examples — Real Artifacts, Case Studies, Demonstrations

> **This directory answers:**  
> “What does LCES look like in action?”

## Start Here
- **00-index.md** — Master index of examples

## What This Directory Contains
The `/examples` directory is the **demonstration layer** of LCES.  
It shows real filings, motions, sanctions, remedies, and procedural strategy.

Use this directory for:
- Case studies  
- Worked examples  
- Annotated filings  
- Arbitration bundles  
- FG + LC + JC integration  
- Before/after transformations  

## File Index
- `00-index.md` — Master index  
- `ahla-arbitration/` — AHLA Arbitration Starter Bundle  
- `punitive-damages/` — Scope of Remedies  
- `spoliation-sanctions/` — Sanctions motion  
- `exhibits-carried-over/` — Notice of Exhibits  
- `quickstart-checklist-v45/` — Checklist v4.5  

## Where to Go Next
- Templates → `/templates/`  
- Assemble filings → `/packets/`  
- Doctrine → `/docs/LCES_Base_Map_Version_Manifest.md`  
- Checklists → `/field-guide/`  
- Device workflows → `/workflows/`

# 📄 /templates — Filing Skeletons, Forms, Checklists

> **This directory answers:**  
> “What structures can I use to draft filings quickly and correctly?”

## Start Here
- **lc-template-pack-v45.zip** — Full template bundle

## What This Directory Contains
Court‑ready skeletons integrating LC, FG, and JC principles.

Use this directory for:
- Motions, responses, notices  
- Proposed Orders  
- Redaction workflows  
- Packet assembly  
- TOA + citation validation  

## File Index
- `lc-template-pack-v45.zip` — Template bundle  
- `proposed-order.docx` — One‑page Proposed Order  
- `motion-skeleton.docx` — Motion framework  
- `notice-template.docx` — Notice + service block  
- `redaction/` — PHI/PII redaction tools  
- `packet-structure.md` — How to assemble packets  

## Where to Go Next
- Examples → `/examples/`  
- Doctrine → `/docs/20-architecture.md`  
- Checklists → `/field-guide/`  
- Archive → `/packets/`  
- Quality check → Second‑Opinion Mode


🧑‍🏫 /roles — Role‑Based Entry Points

Answers:
“Where should I start based on my role?”

Start here: /roles/learner.md
Next: /roles/instructor.md • /roles/maintainer.md

---# 🧑‍🏫 /roles — Role‑Based Entry Points

> **This directory answers:**  
> “Where should I start based on my role?”

## Start Here
- **learner.md** — Orientation path

## What This Directory Contains
Tailored onboarding paths for:
- Learners  
- Instructors  
- Maintainers  
- Practitioners  

## File Index
- `learner.md` — Orientation path  
- `instructor.md` — Teaching paths  
- `maintainer.md` — Contribution workflow  
- `practitioner.md` — Practitioner workflows  

## Where to Go Next
- Conceptual grounding → `/docs/00-overview.md`  
- Hands‑on steps → `/tutorials/01-first-run.md`  
- Checklists → `/field-guide/`  
- Build filings → `/templates/`  
- Archive → `/packets/`


📄 /templates — Filing Skeletons, Forms, Checklists

Answers:
“What structures can I use to draft filings quickly and correctly?”

Start here: lc-template-pack-v45.zip
Next: proposed-order.docx • motion-skeleton.docx

---

📦 /packets — Finalized, Archived Filings

Answers:
“Where do my completed filings live?”

Start here: 00-index.md
Next: Any packet folder

---# 📦 /packets — Finalized, Archived Filings (PDF + Source)

> **This directory answers:**  
> “Where do my completed filings live?”

## Start Here
- **00-index.md** — Master index of packets

## What This Directory Contains
The `/packets` directory is the **archive layer** of LCES.  
This is where finished, court‑ready outputs live.

Use this directory for:
- Finalized motions, responses, notices  
- Assembled filing packets  
- Exhibits + TOA + COS bundles  
- Locked PDFs  
- Editable `.docx` sources  
- Versioned releases  

## File Index (example)
- `00-index.md` — Packet index  
- `ahla-arbitration/` — Completed arbitration packet  
- `punitive-damages/` — Final punitive‑damages packet  
- `spoliation-sanctions/` — Final sanctions packet  
- `notice-of-exhibits/` — Final notice packet  
- `v4.5/` — Tagged release packets  

## Where to Go Next
- Templates → `/templates/`  
- Examples → `/examples/`  
- Doctrine → `/docs/20-architecture.md`  
- Checklists → `/field-guide/`  
- Device workflows → `/workflows/`


🚀 Quickstart (Most Users Should Start Here)

Templates → FG → LC → Proposed Order → TOA → /packets/

---

🧪 Second‑Opinion Mode (8‑Step Pass)

Goal → Docket → FG → LC/LCA → Validate → Proposed Order → COS → Archive

---

🚨 Crisis Mode (Pro Se)

Emergency FG → Template → Proposed Order → Validate → File → Archive

---

🧭 Fast Links (Fill in your repo paths)

FG Index • LC Modules • Master Field Guide • AHLA Bundle • JC • LCa

---

🧼 Filing Hygiene (AI‑Era)

TOA • Locked PDF • Proposed Orders • Mail delays • Redaction • File size

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
Template pack: lc-template-pack-v45.zip

---


• /docs
• /tutorials
• /workflows
• /examples
• /roles
• /templates
• /packets


Each one is clean, structured, and aligned with the architecture you’ve built.

---

✅ 1. `/docs/README.md` — Conceptual Spine

# 📘 /docs — Conceptual Spine of LCES

> **This directory answers:**  
> “What is LCES, how is it structured, and how do the six streams fit together?”

## Start Here
- **00-overview.md** — High‑level introduction  
- **10-quick-tour.md** — Five‑minute orientation  
- **20-architecture.md** — Structural map of LC, LCA, FG, FGA, JC, LCa  

## What This Directory Contains
The `/docs` directory is the **conceptual layer** of LCES.  
If the Field Guide tells you *what to do*, `/docs` tells you *why it works* and *how the system fits together*.

Use this directory for:
- Orientation  
- Architecture  
- Definitions  
- System maps  
- Cross‑stream relationships  

## File Index
- `00-overview.md` — What LCES is  
- `10-quick-tour.md` — Fast orientation  
- `20-architecture.md` — Six‑stream structure  
- `glossary.md` — Shared vocabulary  
- `LCES_Base_Map_Version_Manifest.md` — Canonical system map  

## Where to Go Next
- Hands‑on steps → `/tutorials/01-first-run.md`  
- Checklists/forms → `/field-guide/`  
- Judicial behavior → `/docs/jc-index.md`  
- Filing prep → `/templates/`  
- Teaching → `/roles/instructor.md`


---

✅ 2. `/tutorials/README.md` — Hands‑On Walkthroughs

# 🛠️ /tutorials — Hands‑On, Step‑By‑Step Walkthroughs

> **This directory answers:**  
> “How do I actually run LCES in practice?”

## Start Here
- **01-first-run.md** — Your first operational pass

## What This Directory Contains
The `/tutorials` directory is the **hands‑on layer** of LCES.  
Where `/docs` explains the system, `/tutorials` shows you **how to operate it**.

Use this directory for:
- First‑run setup  
- Guided exercises  
- Artifact inspection  
- Filing simulations  
- End‑to‑end procedural walkthroughs  

## Recommended Sequence
1. `01-first-run.md`  
2. `02-artifacts.md`  
3. `03-fg-integration.md`  
4. `04-packets.md`  
5. `05-review-loop.md`  

## File Index
- `01-first-run.md` — First operational walkthrough  
- `02-artifacts.md` — Understanding artifacts  
- `03-fg-integration.md` — Using FG/FGA inside tutorials  
- `04-packets.md` — Building filing packets  
- `05-review-loop.md` — Running the 8‑Step Pass  

## Where to Go Next
- Conceptual grounding → `/docs/00-overview.md`  
- Checklists/forms → `/field-guide/`  
- Build filings → `/templates/`  
- Archive outputs → `/packets/`  
- Teaching → `/roles/instructor.md`


---

✅ 3. `/workflows/README.md` — Device Loops

# 🔧 /workflows — Device‑Based Operational Loops

> **This directory answers:**  
> “How do I run LCES across my devices in a stable, repeatable way?”

## Start Here
- **ipad.md** — Thinking workspace loop

## What This Directory Contains
The `/workflows` directory defines the **canonical device loops** for LCES.

## Device Roles (LCES Standard)
- **iPad — Thinking Workspace**  
  Capture, annotate, draft, run FG micro‑modules.
- **Desktop — Construction & Commit Station**  
  Build packets, validate citations, finalize filings.
- **iPhone — Quick Reference Device**  
  Checklists, deadlines, TOA reminders, service rules.

## File Index
- `ipad.md` — Cognitive workspace loop  
- `desktop.md` — Construction + commit loop  
- `iphone.md` — Quick‑reference loop  
- `handoff.md` — Cross‑device transitions  

## Where to Go Next
- Conceptual grounding → `/docs/20-architecture.md`  
- Step‑by‑step tasks → `/tutorials/01-first-run.md`  
- Checklists → `/field-guide/`  
- Build filings → `/templates/`  
- Archive → `/packets/`


---

✅ 4. `/examples/README.md` — Case Studies

# 📂 /examples — Real Artifacts, Case Studies, Demonstrations

> **This directory answers:**  
> “What does LCES look like in action?”

## Start Here
- **00-index.md** — Master index of examples

## What This Directory Contains
The `/examples` directory is the **demonstration layer** of LCES.  
It shows real filings, motions, sanctions, remedies, and procedural strategy.

Use this directory for:
- Case studies  
- Worked examples  
- Annotated filings  
- Arbitration bundles  
- FG + LC + JC integration  
- Before/after transformations  

## File Index
- `00-index.md` — Master index  
- `ahla-arbitration/` — AHLA Arbitration Starter Bundle  
- `punitive-damages/` — Scope of Remedies  
- `spoliation-sanctions/` — Sanctions motion  
- `exhibits-carried-over/` — Notice of Exhibits  
- `quickstart-checklist-v45/` — Checklist v4.5  

## Where to Go Next
- Templates → `/templates/`  
- Assemble filings → `/packets/`  
- Doctrine → `/docs/LCES_Base_Map_Version_Manifest.md`  
- Checklists → `/field-guide/`  
- Device workflows → `/workflows/`


---

✅ 5. `/roles/README.md` — Role‑Based Entry

# 🧑‍🏫 /roles — Role‑Based Entry Points

> **This directory answers:**  
> “Where should I start based on my role?”

## Start Here
- **learner.md** — Orientation path

## What This Directory Contains
Tailored onboarding paths for:
- Learners  
- Instructors  
- Maintainers  
- Practitioners  

## File Index
- `learner.md` — Orientation path  
- `instructor.md` — Teaching paths  
- `maintainer.md` — Contribution workflow  
- `practitioner.md` — Practitioner workflows  

## Where to Go Next
- Conceptual grounding → `/docs/00-overview.md`  
- Hands‑on steps → `/tutorials/01-first-run.md`  
- Checklists → `/field-guide/`  
- Build filings → `/templates/`  
- Archive → `/packets/`


---

✅ 6. `/templates/README.md` — Filing Skeletons

# 📄 /templates — Filing Skeletons, Forms, Checklists

> **This directory answers:**  
> “What structures can I use to draft filings quickly and correctly?”

## Start Here
- **lc-template-pack-v45.zip** — Full template bundle

## What This Directory Contains
Court‑ready skeletons integrating LC, FG, and JC principles.

Use this directory for:
- Motions, responses, notices  
- Proposed Orders  
- Redaction workflows  
- Packet assembly  
- TOA + citation validation  

## File Index
- `lc-template-pack-v45.zip` — Template bundle  
- `proposed-order.docx` — One‑page Proposed Order  
- `motion-skeleton.docx` — Motion framework  
- `notice-template.docx` — Notice + service block  
- `redaction/` — PHI/PII redaction tools  
- `packet-structure.md` — How to assemble packets  

## Where to Go Next
- Examples → `/examples/`  
- Doctrine → `/docs/20-architecture.md`  
- Checklists → `/field-guide/`  
- Archive → `/packets/`  
- Quality check → Second‑Opinion Mode


---

✅ 7. `/packets/README.md` — Finalized Filings

# 📦 /packets — Finalized, Archived Filings (PDF + Source)

> **This directory answers:**  
> “Where do my completed filings live?”

## Start Here
- **00-index.md** — Master index of packets

## What This Directory Contains
The `/packets` directory is the **archive layer** of LCES.  
This is where finished, court‑ready outputs live.

Use this directory for:
- Finalized motions, responses, notices  
- Assembled filing packets  
- Exhibits + TOA + COS bundles  
- Locked PDFs  
- Editable `.docx` sources  
- Versioned releases  

## File Index (example)
- `00-index.md` — Packet index  
- `ahla-arbitration/` — Completed arbitration packet  
- `punitive-damages/` — Final punitive‑damages packet  
- `spoliation-sanctions/` — Final sanctions packet  
- `notice-of-exhibits/` — Final notice packet  
- `v4.5/` — Tagged release packets  

## Where to Go Next
- Templates → `/templates/`  
- Examples → `/examples/`  
- Doctrine → `/docs/20-architecture.md`  
- Checklists → `/field-guide/`  
- Device workflows → `/workflows/`


---





So navigation becomes frictionless.

Which one do you want next?
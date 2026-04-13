

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

---

🛠️ /tutorials — Hands‑On, Step‑By‑Step Walkthroughs

Answers:
“How do I actually run LCES in practice?”

Start here: /tutorials/01-first-run.md
Next: /tutorials/02-artifacts.md • /tutorials/03-fg-integration.md

Use this directory for:
First‑run setup • Guided exercises • Artifact inspection • Filing simulations

Recommended sequence:
01 → 02 → 03 → 04 → 05

---

🔧 /workflows — Device‑Based Operational Loops

Answers:
“How do I run LCES across my devices?”

Start here: /workflows/ipad.md
Next: /workflows/desktop.md • /workflows/iphone.md

Device roles:

• iPad — Thinking workspace
• Desktop — Construction & commit
• iPhone — Quick reference


---

📂 /examples — Real Artifacts & Case Studies

Answers:
“What does LCES look like in practice?”

Start here: /examples/00-index.md
Next: ahla-arbitration/ • punitive-damages/

---

🧑‍🏫 /roles — Role‑Based Entry Points

Answers:
“Where should I start based on my role?”

Start here: /roles/learner.md
Next: /roles/instructor.md • /roles/maintainer.md

---

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

---

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

If you want, I can now:

1. Generate directory‑level READMEs for each folder

(so every directory teaches itself)

2. Generate `/packets/00-index.md`

(so your archive becomes navigable)

3. Build a polished visual system map for the README header

(Mermaid or ASCII)

Just tell me which direction you want next.


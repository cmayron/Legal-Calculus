Legal Calculus Educational System (LCES)

Procedural‑literacy workspace for learners and practitioners.
Not legal advice.
Public educational toolkit for structuring filings, spotting issues, and building the record.

---

What Is LCES?

LCES is a procedural‑literacy system that teaches ordinary people how legal processes actually work by studying real artifacts, workflows, and system behaviors. It provides a structured way to build filings, understand judicial patterns, and maintain a clean record. LCES is not legal advice — it is a public educational toolkit for navigating systems with clarity and discipline.

---

Who This System Is For

• Learners — building procedural literacy
• Pro Se litigants — under time pressure
• Instructors / clinics — teaching system navigation
• Practitioners — improving filing discipline
• Contributors — extending the Field Guide or modules

---

Start Here — Choose Your Path

Conceptual (learn the system): /docs/00-overview.md
Hands‑on (do something now): /tutorials/01-first-run.md
Five‑minute orientation: /docs/10-quick-tour.md
Role‑based entry: Instructor → /roles/instructor.md • Contributor → CONTRIBUTING.md • Pro Se (urgent) → Crisis Mode (below)

---

How to Navigate the Repository

LCES is organized into layers, each representing a different mode of learning or doing:

• /docs — learn the system
• /tutorials — do the system
• /workflows — run the system across devices
• /templates — produce filings
• /packets — archive filings
• /examples — study real artifacts
• /roles — choose your path

This mirrors the six‑stream model and the practice flow.

---

Repository Map (You Are Here)

/docs — Concepts, architecture, glossary
/tutorials — Stepwise, runnable walkthroughs
/workflows — Device workflows (iPad, desktop, iPhone)
/examples — Real artifacts and case studies
/roles — Tailored entry points
/templates — Forms, checklists, filing skeletons
/packets — Finalized, archived filings (PDF + source)

---

LCES System Map (Mermaid)

flowchart TD
A[LCES – Legal Calculus Educational System]:::core
subgraph Streams[Six-Stream Model]
LC[LC – Legal Calculus]:::stream
LCA[LCA – Legal Calculus Advanced]:::stream
FG[FG – Field Guide]:::stream
FGA[FGA – Field Guide Advanced]:::stream
JC[JC – Judicial Calculus]:::stream
LCa[LCa – Lawyer Calculus]:::stream
end
A –> Streams
subgraph Layers[Repository Layers]
Docs[/docs – Conceptual Spine/]:::layer
Tutorials[/tutorials – Hands‑On Walkthroughs/]:::layer
Workflows[/workflows – Device Loops/]:::layer
Templates[/templates – Filing Skeletons/]:::layer
Packets[/packets – Finalized Filings/]:::layer
Examples[/examples – Case Studies/]:::layer
Roles[/roles – Role‑Based Entry/]:::layer
end
A –> Layers
FG –> LC
LC –> LCA
LC –> Templates
Templates –> Packets
FG –> Templates
JC –> Templates
LCa –> Templates
Examples –> Templates
Tutorials –> Templates
Workflows –> Templates
subgraph Devices[Device Workflows]
iPad[iPad – Thinking Workspace]:::device
Desktop[Desktop – Construction & Commit]:::device
iPhone[iPhone – Quick Reference]:::device
end
Workflows –> Devices
iPad –> Tutorials
Desktop –> Templates
iPhone –> FG
subgraph SOP[Second‑Opinion Mode – 8‑Step Pass]
S1[1. State Goal]
S2[2. Read Docket]
S3[3. Pull FG Modules]
S4[4. Open LC/LCA]
S5[5. Validate Citations + TOA]
S6[6. Attach Proposed Order]
S7[7. COS + Filing Plan]
S8[8. Archive to /packets]
end
Templates –> SOP
SOP –> Packets
subgraph Crisis[Crisis Mode – Pro Se Under Time Pressure]
C1[FG Emergency Module]
C2[Template Fill]
C3[Proposed Order]
C4[Validate + TOA]
C5[File + Archive]
end
FG –> Crisis
Crisis –> Packets

---

Crisis Mode (Pro Se Under Time Pressure)

For users who must act immediately and cannot complete the full LCES workflow.

Use this when you:
• have a deadline today or tomorrow
• must file something to preserve a right
• need a structured emergency workflow

Crisis Sequence (5 steps):

1. Open FG Emergency Module (e.g., TRO, service, sanctions, deadlines)
2. Pull matching template → fill only required fields
3. Attach a one‑page Proposed Order
4. Validate citations + TOA → email to yourself
5. File + Archive → /packets/


Principles:
• Short filings beat perfect filings
• Proposed Orders prevent “nothing to rule” strikes
• TOA + email-to-self protects the record
• Archive everything

---

/docs — Conceptual Spine of LCES

Start here: 00-overview.md
Next: 10-quick-tour.md • 20-architecture.md

Use this directory for: Orientation • Architecture • Definitions • System maps • Cross‑stream relationships

File Index:
• 00-overview.md
• 10-quick-tour.md
• 20-architecture.md
• glossary.md
• LCES_Base_Map_Version_Manifest.md

---

/tutorials — Hands‑On, Step‑By‑Step Walkthroughs

Start here: 01-first-run.md
Recommended sequence: 01 → 02 → 03 → 04 → 05

File Index:
• 01-first-run.md
• 02-artifacts.md
• 03-fg-integration.md
• 04-packets.md
• 05-review-loop.md

---

/workflows — Device‑Based Operational Loops

Start here: ipad.md

Device roles:
• iPad — Thinking workspace
• Desktop — Construction & commit
• iPhone — Quick reference

File Index:
• ipad.md
• desktop.md
• iphone.md
• handoff.md

---

/examples — Real Artifacts & Case Studies

Start here: 00-index.md

File Index:
• ahla-arbitration/
• punitive-damages/
• spoliation-sanctions/
• exhibits-carried-over/
• quickstart-checklist-v45/

---

/roles — Role‑Based Entry Points

Start here: learner.md

File Index:
• learner.md
• instructor.md
• maintainer.md
• practitioner.md

---

/templates — Filing Skeletons, Forms, Checklists

Start here: lc-template-pack-v45.zip

File Index:
• proposed-order.docx
• motion-skeleton.docx
• notice-template.docx
• redaction/
• packet-structure.md

---

/packets — Finalized, Archived Filings

Start here: 00-index.md

File Index (example):
• ahla-arbitration/
• punitive-damages/
• spoliation-sanctions/
• notice-of-exhibits/
• v4.5/

---

Contributing

See CONTRIBUTING.md for:
• how to propose new FG modules
• how to add examples
• how to update templates
• how to maintain versioned packets

---

Quickstart (Most Users Should Start Here)

Templates → FG → LC → Proposed Order → TOA → /packets/

---

Second‑Opinion Mode (8‑Step Pass)

Goal → Docket → FG → LC/LCA → Validate → Proposed Order → COS → Archive

---

Fast Links (Fill in your repo paths)

FG Index • LC Modules • Master Field Guide • AHLA Bundle • JC • LCa

---

Filing Hygiene (AI‑Era)

TOA • Locked PDF • Proposed Orders • Mail delays • Redaction • File size

---

Why It Matters

Filing is protest.
Format is memory.
The record is the remedy.

---

License & Credits

CC BY‑NC‑ND 4.0
Authors: ChatGPT (first author) & Charles Mayron, MD, FACS

---

Versioning & Releases



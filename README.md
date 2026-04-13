# Legal Calculus Educational System (LCES)

Procedural‑literacy workspace for learners and practitioners.  
**Not legal advice.**  
Public educational toolkit for structuring filings, spotting issues, and building the record.

---

# 🧭 Start Here — Choose Your Path

**Conceptual (learn the system)**  
/docs/00-overview.md

**Hands‑on (do something now)**  
/tutorials/01-first-run.md

**Five‑minute orientation**  
/docs/10-quick-tour.md

**Role‑based entry**  
• Instructor → /roles/instructor.md  
• Contributor → CONTRIBUTING.md  
• Pro Se (urgent) → Crisis Mode (below)

---

# 🗺️ Repository Map (You Are Here)

/docs — Concepts, architecture, glossary  
/tutorials — Stepwise, runnable walkthroughs  
/workflows — Device workflows (iPad, desktop, iPhone)  
/examples — Real artifacts and case studies  
/roles — Tailored entry points  
/templates — Forms, checklists, filing skeletons  
/packets — Finalized, archived filings (PDF + source)

---

# 🌐 LCES System Map (Mermaid)

```mermaid
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

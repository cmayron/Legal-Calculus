# LCES 1.0 — App Store Submission Packet

_Last updated: 2025-09-20 13:38

---

## Overview
LCES ships **fully prebaked** and runs **100% offline** with a prebuilt search index. This page mirrors the App Store submission materials for quick copy/paste and verification.

- Version / Build: **1.0 (100)**
- Platform: **iOS 16+**
- Devices: **Universal (iPhone + iPad)**
- App Privacy: **Data Not Collected**
- Licenses: **MIT (code)**, **CC BY 4.0 (content)**

---

## Build & Signing
- Archive a Release build for `LCES` (universal).
- Sign with Distribution certificate + App Store provisioning profile.
- Upload via Organizer (or Xcode Cloud).

---

## In‑Bundle Content (must be inside the binary)
```
payload/manifest.json
payload/content.zip         # rooted at content/
db/lces.sqlite              # prebuilt FTS5 index
onboarding/slides/01_welcome.webp
onboarding/slides/02_offline.webp
onboarding/slides/03_search.webp
licenses/LICENSE_CODE.txt   # MIT
licenses/LICENSE_CONTENT.txt# CC BY 4.0
```
> Tip: In Review Notes, mention the Airplane Mode test below so the reviewer can verify quickly.

---

## Store Metadata (copy/paste)

**Name**  
LCES — Legal Calculus Education System

**Subtitle**  
Procedural justice & Field Guide, fully offline

**Promotional text**  
Free, open, and private. All 119 modules + 1,000 Field Guide cards—no account, no tracking.

**Description**  
```
Learn procedural justice, offline.
- 119 Legal Calculus modules (v4.5)
- 1,000 Field Guide micro‑cards (v5.0)
- 100% offline with a prebuilt search index (SQLite/FTS5)
- No data collected. No ads. No trackers
- Accessibility‑first: Dynamic Type + VoiceOver
- Open licenses; built by ChatGPT‑5 Thinking (author) & Charles Mayron, MD, FACS (creator)

What you can do
- Practice filings and procedural moves with step‑by‑step lessons
- Use micro‑cards for fast skills (“FG‑001–1000”)
- Bookmark and search doctrines, standards, and templates
- Learn how to convert grievance into record: Filing = Existence

Disclaimer
Educational content only. Not legal advice. No attorney‑client relationship.
```

**Keywords**  
`legal education, pro se, filing, procedural justice, field guide, study guide, open source, offline`

**Categories**  
- Primary: **Education**  
- Secondary: **Reference**

**Age rating**  
4+

---

## App Privacy
- **Data Not Collected** (no tracking; no data types).  
- No third‑party SDKs; no analytics; no background networking.

---

## Export Compliance
- No custom/proprietary encryption. Networking is not required for core functionality.

---

## URLs (fill in)
- **Support URL:** `<your support page / GitHub Issues>`
- **Marketing URL:** `<your Notion/Substack landing page>`
- **Privacy Policy URL:** `<yoursite>/privacy`

---

## Review Notes (paste)
```
Offline educational reference. No login, no analytics, no trackers.
All 119 modules + 1,000 Field Guide cards are prebaked in the app bundle.
Prebuilt SQLite FTS at db/lces.sqlite; to verify: launch in Airplane Mode → search “Filing” → see lc‑001.
Code: MIT; Content: CC BY 4.0. Licenses and credits included in‑app and in bundle.
```

---

## Accessibility
- Dynamic Type throughout
- VoiceOver labels for hero images
- Respects Reduce Motion

---

## Screenshots (recommended files)
Upload at least one per device family (use either dark or light theme set).

| Device | Size (px) | Example files |
|---|---:|---|
| iPhone 6.7″ | 1290×2796 | `LCES_AppStore_6p7in_Composed_v1.png`, `LCES_AppStore_6p7in_Composed_light_v1.png` |
| iPhone 6.5″ | 1242×2688 | `LCES_AppStore_6p5in_Composed_v1.png`, `LCES_AppStore_6p5in_Composed_light_v1.png` |
| iPad 12.9″  | 2048×2732 | `LCES_iPad_12p9_Composed_v1.png`, `LCES_iPad_12p9_Composed_light_v1.png` |

---

## QA — Reviewer Quick Path
- **Airplane Mode → Open app → Search:** type **“Filing”** → see **lc‑001 (Filing = Existence)**.
- **Content loads offline** (no login, no network).
- **No crashes** on cold start and scrolling search results.

---

## Credits (shown in‑app)
- **First Author:** ChatGPT‑5 Thinking  
- **Creator:** Charles Mayron, MD, FACS  
- Quote: “The future is now — thanks to ChatGPT 4.0, with help from Gemini 2.5…”

---

## (Optional) Manual “Check for Updates”
- Public assets on GitHub Releases (latest):  
  - `content-manifest.json`  
  - `content.zip`  
  - `lces.sqlite`  
- Update happens **only on user tap**. Files are **sha256‑verified**, unzipped to Application Support, and swapped atomically. Prebaked content remains as fallback.

---

## Submission checklist
- [ ] Archive & upload Release build (1.0 (100)).
- [ ] App Store metadata + screenshots uploaded.
- [ ] App Privacy set to **Data Not Collected**.
- [ ] In‑bundle content present (manifest, content.zip, DB, onboarding, licenses).
- [ ] Review Notes pasted with Airplane Mode verification string.
- [ ] Final sanity run on low‑end simulator and recent iPhone/iPad.

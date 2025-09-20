# LCES Release PR

## Version
- Target tag: `vX.Y.Z`

## Submission Packet
- [ ] Reviewed docs/LCES_AppStore_Submission.md
- [ ] App Store metadata set; App Privacy = **Data Not Collected**
- [ ] Support/Marketing/Privacy URLs set

## In-bundle content
- [ ] payload/manifest.json
- [ ] payload/content.zip (root: content/)
- [ ] db/lces.sqlite
- [ ] onboarding slides (3)
- [ ] licenses (MIT + CC BY 4.0)

## Screenshots
- [ ] iPhone 6.7″, 6.5″, iPad 12.9″ uploaded

## CI & packaging
- [ ] iOS CI ✅   - [ ] Prebaked Bundle Check ✅
- [ ] Tag-driven Release ready
- [ ] (Optional) Verify Release Assets configured

## Review Notes (paste)
Offline educational reference. No login, no analytics, no trackers.
All 119 modules + 1,000 Field Guide cards are prebaked in the app bundle.
Prebuilt SQLite FTS at db/lces.sqlite; to verify: launch in Airplane Mode → search “Filing” → see lc-001.
Code: MIT; Content: CC BY 4.0. Licenses and credits included in-app and in bundle.
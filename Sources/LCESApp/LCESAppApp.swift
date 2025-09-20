import SwiftUI

@main
struct LCESAppApp: App {
    init() {
        // First-run copy (optional) → Application Support
        _ = try? LCESBootstrap.shared.firstRunSetup()
        // Load content registry (prefers unpacked content if present)
        try? ContentRegistry.shared.bootstrap()
        // Open prebuilt FTS DB
        try? SearchService.shared.open()
    }

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .toolbar {
                        NavigationLink("Settings") { SettingsView() }
                    }
            }
        }
    }
}
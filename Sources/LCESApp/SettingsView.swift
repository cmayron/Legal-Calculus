import SwiftUI

struct SettingsView: View {
    @State private var status = "Idle"
    @State private var busy = false
    @State private var ok = false
    @State private var err: String?

    var body: some View {
        Form {
            Section("Content") {
                Button {
                    Task { await checkAndUpdate() }
                } label: {
                    HStack { if busy { ProgressView() }; Text("Check for Content Updates") }
                }
                .disabled(busy)
                Text(status).font(.footnote).foregroundStyle(.secondary)
            }
            Section(footer: Text("Manual, on-demand. No background polling. No tracking.")) { EmptyView() }
        }
        .navigationTitle("Settings")
        .alert("Update Installed", isPresented: $ok) { Button("OK"){} }
        .alert("Update Failed", isPresented: .init(get: { err != nil }, set: { _ in err=nil })) {
            Button("OK") {}
        } message: { Text(err ?? "") }
    }

    func checkAndUpdate() async {
        busy = true; status = "Checking…"
        do {
            let m = try await UpdateService.shared.checkForUpdate()
            status = "Update \(m.bundleVersion) available — downloading…"
            try await UpdateService.shared.downloadAndApply(manifest: m) { phase in status = phase }
            status = "Installed \(m.bundleVersion)."; ok = true
        } catch UpdateError.notNewer { status = "Up to date." }
        catch { err = error.localizedDescription; status = "Failed." }
        busy = false
    }
}
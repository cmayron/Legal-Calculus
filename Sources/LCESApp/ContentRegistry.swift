import Foundation

final class ContentRegistry {
    static let shared = ContentRegistry()
    private(set) var manifest: Manifest!
    private(set) var baseURL: URL!

    func bootstrap() throws {
        guard let url = Bundle.main.url(forResource: "manifest", withExtension: "json", subdirectory: "payload")
        else { throw NSError(domain: "lces.manifest", code: 1) }
        manifest = try JSONDecoder().decode(Manifest.self, from: Data(contentsOf: url))

        let appSup = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
        let unpacked = appSup.appendingPathComponent("payload/content", isDirectory: true)
        baseURL = FileManager.default.fileExists(atPath: unpacked.path)
        ? unpacked
        : Bundle.main.bundleURL.appendingPathComponent("payload/content", isDirectory: true)
    }

    func url(for relativePath: String) -> URL { baseURL.appendingPathComponent(relativePath) }
}
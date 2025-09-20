import Foundation
import ZIPFoundation
import CryptoKit

enum UpdateError: Error { case fetchFailed, parseFailed, notNewer, hashMismatch(String) }

struct RemoteContentManifest: Decodable {
    struct FileEntry: Decodable { let name: String; let size: Int; let sha256: String }
    let schema: Int; let bundleVersion: String; let contentVersion: [String:String]; let files: [FileEntry]
}

extension URL {
    func sha256Hex() throws -> String {
        let data = try Data(contentsOf: self)
        let digest = SHA256.hash(data: data)
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}

final class UpdateService {
    static let shared = UpdateService(); private init() {}

    var manifestURL = URL(string: "https://github.com/OWNER/REPO/releases/latest/download/content-manifest.json")!
    var contentURL  = URL(string: "https://github.com/OWNER/REPO/releases/latest/download/content.zip")!
    var dbURL       = URL(string: "https://github.com/OWNER/REPO/releases/latest/download/lces.sqlite")!

    private let session: URLSession = {
        let cfg = URLSessionConfiguration.ephemeral
        cfg.requestCachePolicy = .reloadIgnoringLocalCacheData
        return URLSession(configuration: cfg)
    }()

    private var appSup: URL { FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first! }
    private var payloadDir: URL { appSup.appendingPathComponent("payload", isDirectory: true) }
    private var contentDir: URL { payloadDir.appendingPathComponent("content", isDirectory: true) }
    private var dbDir: URL { appSup.appendingPathComponent("db", isDirectory: true) }
    private var tmp: URL { appSup.appendingPathComponent("update_tmp", isDirectory: true) }

    func checkForUpdate() async throws -> RemoteContentManifest {
        let (data, resp) = try await session.data(from: manifestURL)
        guard (resp as? HTTPURLResponse)?.statusCode == 200 else { throw UpdateError.fetchFailed }
        guard let m = try? JSONDecoder().decode(RemoteContentManifest.self, from: data) else { throw UpdateError.parseFailed }
        let local = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0.0"
        if !isNewer(m.bundleVersion, than: local) { throw UpdateError.notNewer }
        return m
    }

    func downloadAndApply(manifest m: RemoteContentManifest, progress: ((String)->Void)? = nil) async throws {
        try FileManager.default.createDirectory(at: tmp, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: tmp) }

        // content.zip
        progress?("Downloading content.zip…")
        let cz = tmp.appendingPathComponent("content.zip")
        try await download(from: contentURL, to: cz)
        if let f = m.files.first(where: { $0.name == "content.zip" }) {
            let h = try cz.sha256Hex(); guard h.lowercased() == f.sha256.lowercased() else { throw UpdateError.hashMismatch("content.zip") }
        }

        // db
        progress?("Downloading search index…")
        let db = tmp.appendingPathComponent("lces.sqlite")
        try await download(from: dbURL, to: db)
        if let f = m.files.first(where: { $0.name == "lces.sqlite" }) {
            let h = try db.sha256Hex(); guard h.lowercased() == f.sha256.lowercased() else { throw UpdateError.hashMismatch("lces.sqlite") }
        }

        // unzip content (must contain content/…)
        progress?("Unpacking…")
        try FileManager.default.unzipItem(at: cz, to: tmp)
        let newContent = tmp.appendingPathComponent("content", isDirectory: true)

        // swap
        progress?("Installing…")
        try FileManager.default.createDirectory(at: payloadDir, withIntermediateDirectories: true)
        try FileManager.default.createDirectory(at: dbDir, withIntermediateDirectories: true)
        if FileManager.default.fileExists(atPath: contentDir.path) {
            try? FileManager.default.removeItem(at: appSup.appendingPathComponent("payload_backup"))
            try? FileManager.default.moveItem(at: contentDir, to: appSup.appendingPathComponent("payload_backup"))
        }
        try FileManager.default.moveItem(at: newContent, to: contentDir)
        let destDB = dbDir.appendingPathComponent("lces.sqlite")
        if FileManager.default.fileExists(atPath: destDB.path) { try FileManager.default.removeItem(at: destDB) }
        try FileManager.default.copyItem(at: db, to: destDB)
    }

    private func download(from: URL, to: URL) async throws {
        let (tmpURL, resp) = try await session.download(from: from)
        guard (resp as? HTTPURLResponse)?.statusCode == 200 else { throw UpdateError.fetchFailed }
        try? FileManager.default.removeItem(at: to)
        try FileManager.default.moveItem(at: tmpURL, to: to)
    }

    private func isNewer(_ a: String, than b: String) -> Bool {
        func split(_ v: String) -> [Int] { v.split(separator: ".").map { Int($0) ?? 0 } }
        let x = split(a), y = split(b)
        for i in 0..<max(x.count, y.count) { let xv = i < x.count ? x[i] : 0; let yv = i < y.count ? y[i] : 0; if xv != yv { return xv > yv } }
        return false
    }
}
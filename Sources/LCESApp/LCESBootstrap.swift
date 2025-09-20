import Foundation

struct BootstrapSummary { let usedUnpacked: Bool; let usedAppDB: Bool }

final class LCESBootstrap {
    static let shared = LCESBootstrap()
    private let fm = FileManager.default
    private var appSup: URL { fm.urls(for: .applicationSupportDirectory, in: .userDomainMask).first! }
    private var bundleContent: URL { Bundle.main.bundleURL.appendingPathComponent("payload/content", isDirectory: true) }
    private var bundleDB: URL { Bundle.main.bundleURL.appendingPathComponent("db/lces.sqlite") }
    private var targetContent: URL { appSup.appendingPathComponent("payload/content", isDirectory: true) }
    private var targetDB: URL { appSup.appendingPathComponent("db/lces.sqlite") }

    @discardableResult
    func firstRunSetup() throws -> BootstrapSummary {
        try fm.createDirectory(at: appSup, withIntermediateDirectories: true)
        var unpacked = false, appDB = false
        if !fm.fileExists(atPath: targetContent.path), fm.fileExists(atPath: bundleContent.path) {
            try copyDirectory(from: bundleContent, to: targetContent); unpacked = true
        }
        if !fm.fileExists(atPath: targetDB.path), fm.fileExists(atPath: bundleDB.path) {
            try fm.createDirectory(at: targetDB.deletingLastPathComponent(), withIntermediateDirectories: true)
            try fm.copyItem(at: bundleDB, to: targetDB); appDB = true
        } else if fm.fileExists(atPath: targetDB.path) { appDB = true }
        return .init(usedUnpacked: unpacked, usedAppDB: appDB)
    }

    private func copyDirectory(from: URL, to: URL) throws {
        try fm.createDirectory(at: to, withIntermediateDirectories: true)
        let en = fm.enumerator(at: from, includingPropertiesForKeys: [.isDirectoryKey])
        while let src = en?.nextObject() as? URL {
            let rel = src.path.replacingOccurrences(of: from.path + "/", with: "")
            let dst = to.appendingPathComponent(rel)
            let isDir = try src.resourceValues(forKeys: [.isDirectoryKey]).isDirectory ?? false
            if isDir { try fm.createDirectory(at: dst, withIntermediateDirectories: true) }
            else { if fm.fileExists(atPath: dst.path) { try fm.removeItem(at: dst) }; try fm.copyItem(at: src, to: dst) }
        }
    }
}
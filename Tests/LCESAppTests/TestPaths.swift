import Foundation
enum TestPaths {
    static var appSupport: URL { FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first! }
    static var bundle: URL { Bundle.main.bundleURL }
    static var manifestURL: URL? { Bundle.main.url(forResource: "manifest", withExtension: "json", subdirectory: "payload") }
    static var dbInBundle: URL { bundle.appendingPathComponent("db/lces.sqlite") }
}
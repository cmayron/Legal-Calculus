import Foundation

struct Manifest: Decodable {
    struct ContentVersion: Decodable { let lc: String; let fg: String; let jc: String?; let mc: String?; let lca: String? }
    struct Paths: Decodable { let json: String; let hero: String? }
    struct Item: Decodable {
        let id: String, type: String, number: Int, tier: Int?
        let title: String, tags: [String]?, paths: Paths
    }
    let schemaVersion: Int
    let contentVersion: ContentVersion
    let counts: [String:Int]
    let items: [Item]
}
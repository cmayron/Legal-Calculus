import Foundation
import SQLite3

struct SearchHit { let id: String; let title: String; let snippet: String }

final class SearchService {
    static let shared = SearchService()
    private var db: OpaquePointer?

    func open() throws {
        let appSup = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
        let appDB = appSup.appendingPathComponent("db/lces.sqlite")
        try FileManager.default.createDirectory(at: appDB.deletingLastPathComponent(), withIntermediateDirectories: true)
        if sqlite3_open(appDB.path, &db) != SQLITE_OK {
            // fallback to bundled DB
            let bundleDB = Bundle.main.bundleURL.appendingPathComponent("db/lces.sqlite")
            guard sqlite3_open(bundleDB.path, &db) == SQLITE_OK else {
                throw NSError(domain: "lces.db", code: 1, userInfo: [NSLocalizedDescriptionKey: "open DB failed"])
            }
        }
    }

    func query(_ text: String, limit: Int = 40) -> [SearchHit] {
        guard let db = db else { return [] }
        let sql = """
        SELECT nodes.id, nodes.title, highlight(nodes_fts, 1, '⟪','⟫')
        FROM nodes_fts JOIN nodes ON nodes.rowid = nodes_fts.rowid
        WHERE nodes_fts MATCH ? LIMIT ?;
        """
        var stmt: OpaquePointer?; var res: [SearchHit] = []
        sqlite3_prepare_v2(db, sql, -1, &stmt, nil)
        defer { sqlite3_finalize(stmt) }
        sqlite3_bind_text(stmt, 1, text, -1, SQLITE_TRANSIENT)
        sqlite3_bind_int(stmt, 2, Int32(limit))
        while sqlite3_step(stmt) == SQLITE_ROW {
            let id = String(cString: sqlite3_column_text(stmt, 0))
            let title = String(cString: sqlite3_column_text(stmt, 1))
            let snippet = String(cString: sqlite3_column_text(stmt, 2))
            res.append(.init(id: id, title: title, snippet: snippet))
        }
        return res
    }
}
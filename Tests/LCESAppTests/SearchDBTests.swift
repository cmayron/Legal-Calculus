import XCTest
import SQLite3

final class SearchDBTests: XCTestCase {
    func testFTSSearchFiling() throws {
        let url = TestPaths.dbInBundle
        guard FileManager.default.fileExists(atPath: url.path) else { throw XCTSkip("db not bundled") }
        var db: OpaquePointer?
        XCTAssertEqual(sqlite3_open(url.path, &db), SQLITE_OK)
        defer { sqlite3_close(db) }
        let sql = "SELECT nodes.id FROM nodes_fts JOIN nodes ON nodes.rowid=nodes_fts.rowid WHERE nodes_fts MATCH 'Filing' LIMIT 5;"
        var stmt: OpaquePointer?; sqlite3_prepare_v2(db, sql, -1, &stmt, nil); defer { sqlite3_finalize(stmt) }
        var foundLC001 = false
        while sqlite3_step(stmt) == SQLITE_ROW {
            let id = String(cString: sqlite3_column_text(stmt, 0))
            if id == "lc-001" { foundLC001 = true }
        }
        XCTAssertTrue(foundLC001, "should find lc-001 for 'Filing'")
    }
}
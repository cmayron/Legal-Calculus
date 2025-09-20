import XCTest
final class ManifestTests: XCTestCase {
    func testCounts() throws {
        guard let url = TestPaths.manifestURL else { throw XCTSkip("manifest.json not found") }
        let m = try JSONDecoder().decode(Manifest.self, from: Data(contentsOf: url))
        XCTAssertEqual(m.counts["lcModules"], 119)
        XCTAssertEqual(m.counts["fgCards"], 1000)
    }
}
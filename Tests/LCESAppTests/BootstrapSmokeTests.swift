import XCTest
final class BootstrapSmokeTests: XCTestCase {
    func testManifestExists() {
        XCTAssertNotNil(TestPaths.manifestURL)
    }
}
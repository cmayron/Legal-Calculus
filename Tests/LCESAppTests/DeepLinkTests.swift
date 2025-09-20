import XCTest
final class DeepLinkTests: XCTestCase {
    func testParse() throws {
        let u1 = URL(string: "lces://module/36")!
        let u2 = URL(string: "lces://fg/1")!
        if case .module(36) = try parseDeepLink(u1) {} else { XCTFail() }
        if case .fg(1) = try parseDeepLink(u2) {} else { XCTFail() }
    }
}
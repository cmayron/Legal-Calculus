import Foundation
enum DeepLink { case module(Int); case fg(Int) }
enum DeepLinkError: Error { case invalid }
func parseDeepLink(_ url: URL) throws -> DeepLink {
    guard url.scheme?.lowercased() == "lces", let host = url.host?.lowercased() else { throw DeepLinkError.invalid }
    guard let number = Int(url.path.trimmingCharacters(in: CharacterSet(charactersIn: "/"))) else { throw DeepLinkError.invalid }
    switch host { case "module": return .module(number); case "fg": return .fg(number); default: throw DeepLinkError.invalid }
}
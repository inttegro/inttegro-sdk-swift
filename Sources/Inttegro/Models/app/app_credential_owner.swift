// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `AppCredentialOwner` value used by the Inttegro API.
public struct AppCredentialOwner: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let child = Self(rawValue: "child")
    public static let parent = Self(rawValue: "parent")
}

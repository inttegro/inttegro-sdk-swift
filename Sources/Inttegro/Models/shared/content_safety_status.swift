// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ContentSafetyStatus` value used by the Inttegro API.
public struct ContentSafetyStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let allowed = Self(rawValue: "allowed")
    public static let rejected = Self(rawValue: "rejected")
    public static let quarantined = Self(rawValue: "quarantined")
}

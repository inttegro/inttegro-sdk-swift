// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `AppRelationshipStatus` value used by the Inttegro API.
public struct AppRelationshipStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let inactive = Self(rawValue: "inactive")
    public static let suspended = Self(rawValue: "suspended")
    public static let revoked = Self(rawValue: "revoked")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `SecretKeyStatus` value used by the Inttegro API.
public struct SecretKeyStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let revoked = Self(rawValue: "revoked")
    public static let expired = Self(rawValue: "expired")
}

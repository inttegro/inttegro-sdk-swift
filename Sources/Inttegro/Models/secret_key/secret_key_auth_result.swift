// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `SecretKeyAuthResult` value used by the Inttegro API.
public struct SecretKeyAuthResult: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
}

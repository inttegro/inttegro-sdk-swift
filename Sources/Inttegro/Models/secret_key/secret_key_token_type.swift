// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `SecretKeyTokenType` value used by the Inttegro API.
public struct SecretKeyTokenType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let bearer = Self(rawValue: "bearer")
}

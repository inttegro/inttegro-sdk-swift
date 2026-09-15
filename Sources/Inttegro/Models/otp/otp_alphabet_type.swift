// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OTPAlphabetType` value used by the Inttegro API.
public struct OTPAlphabetType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let numeric = Self(rawValue: "numeric")
    public static let alpha = Self(rawValue: "alpha")
    public static let alphanumeric = Self(rawValue: "alphanumeric")
}

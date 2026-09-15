// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OTPVerificationVerdict` value used by the Inttegro API.
public struct OTPVerificationVerdict: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let fail = Self(rawValue: "fail")
    public static let pass = Self(rawValue: "pass")
}

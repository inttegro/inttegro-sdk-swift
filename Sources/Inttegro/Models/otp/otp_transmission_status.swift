// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OTPTransmissionStatus` value used by the Inttegro API.
public struct OTPTransmissionStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let delivered = Self(rawValue: "delivered")
    public static let failed = Self(rawValue: "failed")
    public static let submitted = Self(rawValue: "submitted")
}

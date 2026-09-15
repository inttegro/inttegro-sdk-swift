// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PaymentAttemptStatus` value used by the Inttegro API.
public struct PaymentAttemptStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let initiated = Self(rawValue: "initiated")
    public static let executed = Self(rawValue: "executed")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let failed = Self(rawValue: "failed")
    public static let unknown = Self(rawValue: "unknown")
}

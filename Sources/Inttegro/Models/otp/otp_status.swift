// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OTPStatus` value used by the Inttegro API.
public struct OTPStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let pending = Self(rawValue: "pending")
    public static let pendingDelivery = Self(rawValue: "pending_delivery")
    public static let pendingVerification = Self(rawValue: "pending_verification")
    public static let verified = Self(rawValue: "verified")
}

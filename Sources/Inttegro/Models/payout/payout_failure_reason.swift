// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A stable, caller-safe reason that a payout failed.
public struct PayoutFailureReason: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let providerDeclined = Self(rawValue: "provider_declined")
    public static let deliveryFailed = Self(rawValue: "delivery_failed")
    public static let temporarilyUnavailable = Self(rawValue: "temporarily_unavailable")
    public static let unknown = Self(rawValue: "unknown")
}

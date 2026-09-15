// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `CheckoutPaymentStatus` value used by the Inttegro API.
public struct CheckoutPaymentStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let requiresAction = Self(rawValue: "requires_action")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
    public static let cancelled = Self(rawValue: "cancelled")
}

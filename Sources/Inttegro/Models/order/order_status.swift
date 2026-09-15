// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OrderStatus` value used by the Inttegro API.
public struct OrderStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let preparing = Self(rawValue: "preparing")
    public static let requiresPayment = Self(rawValue: "requires_payment")
    public static let paid = Self(rawValue: "paid")
    public static let completed = Self(rawValue: "completed")
    public static let canceled = Self(rawValue: "canceled")
    public static let expired = Self(rawValue: "expired")
    public static let unknown = Self(rawValue: "unknown")
}

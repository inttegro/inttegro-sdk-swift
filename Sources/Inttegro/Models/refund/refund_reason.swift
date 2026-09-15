// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `RefundReason` value used by the Inttegro API.
public struct RefundReason: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let requestedByCustomer = Self(rawValue: "requested_by_customer")
    public static let duplicate = Self(rawValue: "duplicate")
    public static let fraudulent = Self(rawValue: "fraudulent")
    public static let orderCanceled = Self(rawValue: "order_canceled")
    public static let itemReturned = Self(rawValue: "item_returned")
    public static let itemDamaged = Self(rawValue: "item_damaged")
    public static let itemNotReceived = Self(rawValue: "item_not_received")
    public static let itemNotAsDescribed = Self(rawValue: "item_not_as_described")
    public static let custom = Self(rawValue: "custom")
}

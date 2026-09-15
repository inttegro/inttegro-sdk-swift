// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OrderCreatedFromResourceType` value used by the Inttegro API.
public struct OrderCreatedFromResourceType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let purchaseIntent = Self(rawValue: "purchase_intent")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PurchaseIntentStatus` value used by the Inttegro API.
public struct PurchaseIntentStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let active = Self(rawValue: "active")
    public static let expired = Self(rawValue: "expired")
    public static let inactive = Self(rawValue: "inactive")
    public static let used = Self(rawValue: "used")
}

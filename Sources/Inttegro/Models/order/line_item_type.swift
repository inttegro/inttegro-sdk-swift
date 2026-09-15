// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `LineItemType` value used by the Inttegro API.
public struct LineItemType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let product = Self(rawValue: "product")
    public static let fee = Self(rawValue: "fee")
    public static let shipping = Self(rawValue: "shipping")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ProductType` value used by the Inttegro API.
public struct ProductType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let physical = Self(rawValue: "physical")
    public static let digital = Self(rawValue: "digital")
    public static let service = Self(rawValue: "service")
    public static let voucher = Self(rawValue: "voucher")
    public static let custom = Self(rawValue: "custom")
    public static let cause = Self(rawValue: "cause")
}

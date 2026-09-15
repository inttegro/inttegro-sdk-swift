// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `DeliveryChannel` value used by the Inttegro API.
public struct DeliveryChannel: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let email = Self(rawValue: "email")
    public static let sms = Self(rawValue: "sms")
}

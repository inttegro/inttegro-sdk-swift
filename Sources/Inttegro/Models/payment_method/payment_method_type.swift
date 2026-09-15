// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PaymentMethodType` value used by the Inttegro API.
public struct PaymentMethodType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let mobileMoney = Self(rawValue: "mobile_money")
    public static let bankAccount = Self(rawValue: "bank_account")
    public static let card = Self(rawValue: "card")
    public static let motito = Self(rawValue: "motito")
}

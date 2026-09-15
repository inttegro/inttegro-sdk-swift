// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FinancialAccountType` value used by the Inttegro API.
public struct FinancialAccountType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let wallet = Self(rawValue: "wallet")
    public static let bankAccount = Self(rawValue: "bank_account")
    public static let doshAccount = Self(rawValue: "dosh_account")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `BankAccountType` value used by the Inttegro API.
public struct BankAccountType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let ghanaBankAccount = Self(rawValue: "ghana_bank_account")
}

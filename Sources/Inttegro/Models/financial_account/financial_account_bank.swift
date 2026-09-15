// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountBank: Codable, Sendable, Equatable {
    public var type: BankAccountType
    public var ghanaBankAccount: GhanaBankAccount?

    public init(
        type: BankAccountType,
        ghanaBankAccount: GhanaBankAccount? = nil
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

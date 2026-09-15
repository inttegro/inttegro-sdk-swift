// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestBankAccount: Codable, Sendable, Equatable {
    public var type: BankAccountType
    public var ghanaBankAccount: FinancialAccountBankRequestBankAccountGhanaBankAccount

    public init(
        type: BankAccountType,
        ghanaBankAccount: FinancialAccountBankRequestBankAccountGhanaBankAccount
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

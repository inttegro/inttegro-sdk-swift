// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodBankAccount: Codable, Sendable, Equatable {
    public var ghanaBankAccount: PaymentMethodBankAccountGhanaBankAccount?
    public var type: BankAccountType

    public init(
        ghanaBankAccount: PaymentMethodBankAccountGhanaBankAccount? = nil,
        type: BankAccountType
    ) {
        self.ghanaBankAccount = ghanaBankAccount
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case ghanaBankAccount = "ghana_bank_account"
        case type
    }
}

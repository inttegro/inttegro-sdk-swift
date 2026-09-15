// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSettings: Codable, Sendable, Equatable {
    public var mobileMoney: PaymentMethodTypeSetting?
    public var bankAccount: PaymentMethodTypeSetting?
    public var card: PaymentMethodTypeSetting?
    public var motito: PaymentMethodTypeSetting?

    public init(
        mobileMoney: PaymentMethodTypeSetting? = nil,
        bankAccount: PaymentMethodTypeSetting? = nil,
        card: PaymentMethodTypeSetting? = nil,
        motito: PaymentMethodTypeSetting? = nil
    ) {
        self.mobileMoney = mobileMoney
        self.bankAccount = bankAccount
        self.card = card
        self.motito = motito
    }

    private enum CodingKeys: String, CodingKey {
        case mobileMoney = "mobile_money"
        case bankAccount = "bank_account"
        case card
        case motito
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataInput?
    public var description: String?
    public var owner: FinancialAccountOwnerInput?
    public var pullConfiguration: FinancialAccountBankRequestPullConfiguration?
    public var pushConfiguration: FinancialAccountBankRequestPushConfiguration?
    public var currency: String
    public var label: String
    public var reference: String
    public var type: FinancialAccountType
    public var bankAccount: FinancialAccountBankRequestBankAccount

    public init(
        customData: CustomDataInput? = nil,
        description: String? = nil,
        owner: FinancialAccountOwnerInput? = nil,
        pullConfiguration: FinancialAccountBankRequestPullConfiguration? = nil,
        pushConfiguration: FinancialAccountBankRequestPushConfiguration? = nil,
        currency: String,
        label: String,
        reference: String,
        type: FinancialAccountType,
        bankAccount: FinancialAccountBankRequestBankAccount
    ) {
        self.customData = customData
        self.description = description
        self.owner = owner
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.currency = currency
        self.label = label
        self.reference = reference
        self.type = type
        self.bankAccount = bankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case owner
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case currency
        case label
        case reference
        case type
        case bankAccount = "bank_account"
    }
}

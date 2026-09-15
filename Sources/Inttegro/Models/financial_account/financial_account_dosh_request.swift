// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountDoshRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataInput?
    public var description: String?
    public var pullConfiguration: FinancialAccountDoshRequestPullConfiguration?
    public var pushConfiguration: FinancialAccountDoshRequestPushConfiguration?
    public var currency: String
    public var label: String
    public var owner: FinancialAccountOwnerInput
    public var reference: String
    public var type: FinancialAccountType
    public var doshAccount: DoshAccount

    public init(
        customData: CustomDataInput? = nil,
        description: String? = nil,
        pullConfiguration: FinancialAccountDoshRequestPullConfiguration? = nil,
        pushConfiguration: FinancialAccountDoshRequestPushConfiguration? = nil,
        currency: String,
        label: String,
        owner: FinancialAccountOwnerInput,
        reference: String,
        type: FinancialAccountType,
        doshAccount: DoshAccount
    ) {
        self.customData = customData
        self.description = description
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.currency = currency
        self.label = label
        self.owner = owner
        self.reference = reference
        self.type = type
        self.doshAccount = doshAccount
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case currency
        case label
        case owner
        case reference
        case type
        case doshAccount = "dosh_account"
    }
}

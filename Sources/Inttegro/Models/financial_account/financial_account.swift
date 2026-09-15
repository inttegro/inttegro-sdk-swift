// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccount: Codable, Sendable, Equatable {
    public var archivedAt: Date?
    public var createdAt: Date
    public var currency: String
    public var customData: CustomData?
    public var description: String?
    public var id: String
    public var institution: FinancialInstitution?
    public var label: String?
    public var pullConfiguration: FinancialAccountPullConfiguration?
    public var pushConfiguration: FinancialAccountPushConfiguration?
    public var reference: String?
    public var supplied: ResourceSupply?
    public var type: FinancialAccountType
    public var verification: FinancialAccountVerification?
    public var bankAccount: FinancialAccountBank?
    public var disconnectedAt: Date?
    public var doshAccount: DoshAccount?
    public var owner: FinancialAccountOwner?
    public var wallet: FinancialAccountWallet?

    public init(
        archivedAt: Date? = nil,
        createdAt: Date,
        currency: String,
        customData: CustomData? = nil,
        description: String? = nil,
        id: String,
        institution: FinancialInstitution? = nil,
        label: String? = nil,
        pullConfiguration: FinancialAccountPullConfiguration? = nil,
        pushConfiguration: FinancialAccountPushConfiguration? = nil,
        reference: String? = nil,
        supplied: ResourceSupply? = nil,
        type: FinancialAccountType,
        verification: FinancialAccountVerification? = nil,
        bankAccount: FinancialAccountBank? = nil,
        disconnectedAt: Date? = nil,
        doshAccount: DoshAccount? = nil,
        owner: FinancialAccountOwner? = nil,
        wallet: FinancialAccountWallet? = nil
    ) {
        self.archivedAt = archivedAt
        self.createdAt = createdAt
        self.currency = currency
        self.customData = customData
        self.description = description
        self.id = id
        self.institution = institution
        self.label = label
        self.pullConfiguration = pullConfiguration
        self.pushConfiguration = pushConfiguration
        self.reference = reference
        self.supplied = supplied
        self.type = type
        self.verification = verification
        self.bankAccount = bankAccount
        self.disconnectedAt = disconnectedAt
        self.doshAccount = doshAccount
        self.owner = owner
        self.wallet = wallet
    }

    private enum CodingKeys: String, CodingKey {
        case archivedAt = "archived_at"
        case createdAt = "created_at"
        case currency
        case customData = "custom_data"
        case description
        case id
        case institution
        case label
        case pullConfiguration = "pull_configuration"
        case pushConfiguration = "push_configuration"
        case reference
        case supplied
        case type
        case verification
        case bankAccount = "bank_account"
        case disconnectedAt = "disconnected_at"
        case doshAccount = "dosh_account"
        case owner
        case wallet
    }
}

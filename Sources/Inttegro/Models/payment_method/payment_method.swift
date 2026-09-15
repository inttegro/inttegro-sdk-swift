// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethod: Codable, Sendable, Equatable {
    public var active: Bool
    public var archivedAt: Date?
    public var bankAccount: PaymentMethodBankAccount?
    public var card: PaymentMethodCard?
    public var createdAt: Date
    public var customData: CustomData?
    public var customerId: String
    public var ephemeral: Bool?
    public var expiresOn: Date?
    public var fingerprint: String
    public var id: String
    public var mobileMoney: PaymentMethodMobileMoney?
    public var owner: PaymentMethodOwner?
    public var type: PaymentMethodType
    public var supplied: PaymentMethodSupplied?
    public var verification: PaymentMethodVerification?
    public var verifiedAt: Date?

    public init(
        active: Bool,
        archivedAt: Date? = nil,
        bankAccount: PaymentMethodBankAccount? = nil,
        card: PaymentMethodCard? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        customerId: String,
        ephemeral: Bool? = nil,
        expiresOn: Date? = nil,
        fingerprint: String,
        id: String,
        mobileMoney: PaymentMethodMobileMoney? = nil,
        owner: PaymentMethodOwner? = nil,
        type: PaymentMethodType,
        supplied: PaymentMethodSupplied? = nil,
        verification: PaymentMethodVerification? = nil,
        verifiedAt: Date? = nil
    ) {
        self.active = active
        self.archivedAt = archivedAt
        self.bankAccount = bankAccount
        self.card = card
        self.createdAt = createdAt
        self.customData = customData
        self.customerId = customerId
        self.ephemeral = ephemeral
        self.expiresOn = expiresOn
        self.fingerprint = fingerprint
        self.id = id
        self.mobileMoney = mobileMoney
        self.owner = owner
        self.type = type
        self.supplied = supplied
        self.verification = verification
        self.verifiedAt = verifiedAt
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case archivedAt = "archived_at"
        case bankAccount = "bank_account"
        case card
        case createdAt = "created_at"
        case customData = "custom_data"
        case customerId = "customer_id"
        case ephemeral
        case expiresOn = "expires_on"
        case fingerprint
        case id
        case mobileMoney = "mobile_money"
        case owner
        case type
        case supplied
        case verification
        case verifiedAt = "verified_at"
    }
}

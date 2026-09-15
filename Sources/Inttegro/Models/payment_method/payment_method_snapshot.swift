// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshot: Codable, Sendable, Equatable {
    public var id: String
    public var bankAccount: PaymentMethodSnapshotBankAccount?
    public var card: PaymentMethodCard?
    public var createdAt: Date
    public var customerId: String
    public var mobileMoney: PaymentMethodSnapshotMobileMoney?
    public var owner: PaymentMethodSnapshotOwner?
    public var type: PaymentMethodType
    public var verified: Bool
    public var verifiedAt: Date?

    public init(
        id: String,
        bankAccount: PaymentMethodSnapshotBankAccount? = nil,
        card: PaymentMethodCard? = nil,
        createdAt: Date,
        customerId: String,
        mobileMoney: PaymentMethodSnapshotMobileMoney? = nil,
        owner: PaymentMethodSnapshotOwner? = nil,
        type: PaymentMethodType,
        verified: Bool,
        verifiedAt: Date? = nil
    ) {
        self.id = id
        self.bankAccount = bankAccount
        self.card = card
        self.createdAt = createdAt
        self.customerId = customerId
        self.mobileMoney = mobileMoney
        self.owner = owner
        self.type = type
        self.verified = verified
        self.verifiedAt = verifiedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case bankAccount = "bank_account"
        case card
        case createdAt = "created_at"
        case customerId = "customer_id"
        case mobileMoney = "mobile_money"
        case owner
        case type
        case verified
        case verifiedAt = "verified_at"
    }
}

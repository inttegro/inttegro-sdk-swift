import Foundation

public struct ChildrenPolicyAmountRange: Codable, Sendable, Equatable {
    public var min: Int64
    public var max: Int64
    public init(min: Int64, max: Int64) { self.min = min; self.max = max }
}

public struct ChildrenPolicyLimits: Codable, Sendable, Equatable {
    public var amount: ChildrenPolicyAmountRange
    public init(amount: ChildrenPolicyAmountRange) { self.amount = amount }
}

public struct ChildrenPolicyBTAgingSpec: Codable, Sendable, Equatable {
    public var publicId: String
    public var tPlus: String
    public init(publicId: String, tPlus: String) { self.publicId = publicId; self.tPlus = tPlus }
    private enum CodingKeys: String, CodingKey { case publicId = "public_id"; case tPlus = "t_plus" }
}

public struct ChildrenPolicyPaymentsCapabilities: Codable, Sendable, Equatable {
    public var currencies: [String]?
    public var limits: ChildrenPolicyLimits?
    public init(currencies: [String]? = nil, limits: ChildrenPolicyLimits? = nil) {
        self.currencies = currencies; self.limits = limits
    }
}

public struct ChildrenPolicyPayoutsCapabilities: Codable, Sendable, Equatable {
    public var enabled: [Bool]?
    public var limits: ChildrenPolicyLimits?
    public var btAgingSpec: [ChildrenPolicyBTAgingSpec]?
    public init(enabled: [Bool]? = nil, limits: ChildrenPolicyLimits? = nil, btAgingSpec: [ChildrenPolicyBTAgingSpec]? = nil) {
        self.enabled = enabled; self.limits = limits; self.btAgingSpec = btAgingSpec
    }
    private enum CodingKeys: String, CodingKey { case enabled; case limits; case btAgingSpec = "bt_aging_spec" }
}

public struct ChildrenPolicyPaymentMethodCapabilities: Codable, Sendable, Equatable {
    public var enabled: [Bool]
    public var confirmsUse: [Bool]
    public init(enabled: [Bool], confirmsUse: [Bool]) { self.enabled = enabled; self.confirmsUse = confirmsUse }
    private enum CodingKeys: String, CodingKey { case enabled; case confirmsUse = "confirms_use" }
}

public struct ChildrenPolicyPaymentMethodsCapabilities: Codable, Sendable, Equatable {
    public var mobileMoney: ChildrenPolicyPaymentMethodCapabilities?
    public var bankAccount: ChildrenPolicyPaymentMethodCapabilities?
    public var motito: ChildrenPolicyPaymentMethodCapabilities?
    public var card: ChildrenPolicyPaymentMethodCapabilities?
    public init(
        mobileMoney: ChildrenPolicyPaymentMethodCapabilities? = nil,
        bankAccount: ChildrenPolicyPaymentMethodCapabilities? = nil,
        motito: ChildrenPolicyPaymentMethodCapabilities? = nil,
        card: ChildrenPolicyPaymentMethodCapabilities? = nil
    ) {
        self.mobileMoney = mobileMoney; self.bankAccount = bankAccount; self.motito = motito; self.card = card
    }
    private enum CodingKeys: String, CodingKey { case mobileMoney = "mobile_money"; case bankAccount = "bank_account"; case motito; case card }
}

public struct ChildrenPolicyCapabilities: Codable, Sendable, Equatable {
    public var payments: ChildrenPolicyPaymentsCapabilities?
    public var payouts: ChildrenPolicyPayoutsCapabilities?
    public var paymentMethods: ChildrenPolicyPaymentMethodsCapabilities?
    public init(
        payments: ChildrenPolicyPaymentsCapabilities? = nil,
        payouts: ChildrenPolicyPayoutsCapabilities? = nil,
        paymentMethods: ChildrenPolicyPaymentMethodsCapabilities? = nil
    ) {
        self.payments = payments; self.payouts = payouts; self.paymentMethods = paymentMethods
    }
    private enum CodingKeys: String, CodingKey { case payments; case payouts; case paymentMethods = "payment_methods" }
}

public struct ChildrenPolicy: Codable, Sendable, Equatable {
    public var id: String
    public var ownerApplicationId: String
    public var version: Int
    public var activeVersion: Int
    public var name: String
    public var description: String?
    public var capabilities: ChildrenPolicyCapabilities
    public var createdAt: Date
    public var updatedAt: Date
    public var versionCreatedAt: Date
    private enum CodingKeys: String, CodingKey {
        case id; case ownerApplicationId = "owner_application_id"; case version
        case activeVersion = "active_version"; case name; case description; case capabilities
        case createdAt = "created_at"; case updatedAt = "updated_at"; case versionCreatedAt = "version_created_at"
    }
}

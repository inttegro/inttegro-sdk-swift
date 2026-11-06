import Foundation

public struct OperatingPolicyAmountRange: Codable, Sendable, Equatable {
    public var min: Int64
    public var max: Int64
    public init(min: Int64, max: Int64) { self.min = min; self.max = max }
}

public struct OperatingPolicyLimits: Codable, Sendable, Equatable {
    public var amount: OperatingPolicyAmountRange
    public init(amount: OperatingPolicyAmountRange) { self.amount = amount }
}

public struct OperatingPolicyBTAgingSpecReference: Codable, Sendable, Equatable {
    public var id: String
    public init(id: String) { self.id = id }
}

public struct OperatingPolicyBTAgingSpec: Codable, Sendable, Equatable {
    public var id: String
    public var tPlus: String
    public init(id: String, tPlus: String) { self.id = id; self.tPlus = tPlus }
    private enum CodingKeys: String, CodingKey { case id; case tPlus = "t_plus" }
}

public struct OperatingPolicyPaymentsCapabilitiesInput: Codable, Sendable, Equatable {
    public var currencies: [String]?
    public var limits: OperatingPolicyLimits?
    public init(currencies: [String]? = nil, limits: OperatingPolicyLimits? = nil) {
        self.currencies = currencies; self.limits = limits
    }
}

public struct OperatingPolicyPayoutsCapabilitiesInput: Codable, Sendable, Equatable {
    public var enabled: Bool?
    public var limits: OperatingPolicyLimits?
    public var btAgingSpec: OperatingPolicyBTAgingSpecReference?
    public init(enabled: Bool? = nil, limits: OperatingPolicyLimits? = nil, btAgingSpec: OperatingPolicyBTAgingSpecReference? = nil) {
        self.enabled = enabled; self.limits = limits; self.btAgingSpec = btAgingSpec
    }
    private enum CodingKeys: String, CodingKey { case enabled; case limits; case btAgingSpec = "bt_aging_spec" }
}

public struct OperatingPolicyPaymentMethodCapabilities: Codable, Sendable, Equatable {
    public var enabled: Bool
    public var confirmsUse: Bool
    public init(enabled: Bool, confirmsUse: Bool) { self.enabled = enabled; self.confirmsUse = confirmsUse }
    private enum CodingKeys: String, CodingKey { case enabled; case confirmsUse = "confirms_use" }
}

public struct OperatingPolicyPaymentMethodsCapabilities: Codable, Sendable, Equatable {
    public var mobileMoney: OperatingPolicyPaymentMethodCapabilities?
    public var bankAccount: OperatingPolicyPaymentMethodCapabilities?
    public var motito: OperatingPolicyPaymentMethodCapabilities?
    public var card: OperatingPolicyPaymentMethodCapabilities?
    public init(
        mobileMoney: OperatingPolicyPaymentMethodCapabilities? = nil,
        bankAccount: OperatingPolicyPaymentMethodCapabilities? = nil,
        motito: OperatingPolicyPaymentMethodCapabilities? = nil,
        card: OperatingPolicyPaymentMethodCapabilities? = nil
    ) {
        self.mobileMoney = mobileMoney; self.bankAccount = bankAccount; self.motito = motito; self.card = card
    }
    private enum CodingKeys: String, CodingKey { case mobileMoney = "mobile_money"; case bankAccount = "bank_account"; case motito; case card }
}

public struct OperatingPolicyCapabilitiesInput: Codable, Sendable, Equatable {
    public var payments: OperatingPolicyPaymentsCapabilitiesInput?
    public var payouts: OperatingPolicyPayoutsCapabilitiesInput?
    public var paymentMethods: OperatingPolicyPaymentMethodsCapabilities?
    public init(
        payments: OperatingPolicyPaymentsCapabilitiesInput? = nil,
        payouts: OperatingPolicyPayoutsCapabilitiesInput? = nil,
        paymentMethods: OperatingPolicyPaymentMethodsCapabilities? = nil
    ) {
        self.payments = payments; self.payouts = payouts; self.paymentMethods = paymentMethods
    }
    private enum CodingKeys: String, CodingKey { case payments; case payouts; case paymentMethods = "payment_methods" }
}

public struct OperatingPolicyPaymentsCapabilities: Codable, Sendable, Equatable {
    public var currencies: [String]?
    public var limits: OperatingPolicyLimits?
}

public struct OperatingPolicyPayoutsCapabilities: Codable, Sendable, Equatable {
    public var enabled: Bool?
    public var limits: OperatingPolicyLimits?
    public var btAgingSpec: OperatingPolicyBTAgingSpec?
    private enum CodingKeys: String, CodingKey { case enabled; case limits; case btAgingSpec = "bt_aging_spec" }
}

public struct OperatingPolicyCapabilities: Codable, Sendable, Equatable {
    public var payments: OperatingPolicyPaymentsCapabilities?
    public var payouts: OperatingPolicyPayoutsCapabilities?
    public var paymentMethods: OperatingPolicyPaymentMethodsCapabilities?
    private enum CodingKeys: String, CodingKey { case payments; case payouts; case paymentMethods = "payment_methods" }
}

public enum OperatingPolicySourceType: String, Codable, Sendable, Equatable { case inline; case template }

public struct OperatingPolicySource: Codable, Sendable, Equatable {
    public var type: OperatingPolicySourceType
    public var id: String?
    public var version: Int?
}

public struct ApplicationOperatingPolicy: Codable, Sendable, Equatable {
    public var capabilities: OperatingPolicyCapabilities
    public var source: OperatingPolicySource
}

public struct OperatingPolicy: Codable, Sendable, Equatable {
    public var id: String
    public var version: Int
    public var activeVersion: Int
    public var name: String
    public var description: String?
    public var capabilities: OperatingPolicyCapabilities
    public var childrenPolicyId: String
    public var childrenPolicyVersion: Int
    public var createdAt: Date
    public var updatedAt: Date
    public var versionCreatedAt: Date
    private enum CodingKeys: String, CodingKey {
        case id; case version; case activeVersion = "active_version"; case name; case description; case capabilities
        case childrenPolicyId = "children_policy_id"; case childrenPolicyVersion = "children_policy_version"
        case createdAt = "created_at"; case updatedAt = "updated_at"; case versionCreatedAt = "version_created_at"
    }
}

public enum OperatingPolicySelection: Codable, Sendable, Equatable {
    case id(String)
    case inline(OperatingPolicyCapabilitiesInput)

    private enum CodingKeys: String, CodingKey { case id; case capabilities }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        if let id = try values.decodeIfPresent(String.self, forKey: .id) {
            self = .id(id)
            return
        }
        self = .inline(try values.decode(OperatingPolicyCapabilitiesInput.self, forKey: .capabilities))
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .id(let id): try values.encode(id, forKey: .id)
        case .inline(let capabilities): try values.encode(capabilities, forKey: .capabilities)
        }
    }
}

public struct CreateOperatingPolicyRequest: Codable, Sendable, Equatable {
    public var name: String
    public var description: String?
    public var capabilities: OperatingPolicyCapabilitiesInput
    public init(name: String, description: String? = nil, capabilities: OperatingPolicyCapabilitiesInput) {
        self.name = name; self.description = description; self.capabilities = capabilities
    }
}

public struct LookupOperatingPolicyRequest: Codable, Sendable, Equatable {
    public var operatingPolicyId: String
    public var version: Int?
    public init(operatingPolicyId: String, version: Int? = nil) {
        self.operatingPolicyId = operatingPolicyId
        self.version = version
    }
    private enum CodingKeys: String, CodingKey { case operatingPolicyId = "operating_policy_id"; case version }
}

/// Parameters for listing versions of one operating policy.
public struct PageOperatingPoliciesRequest: Codable, Sendable, Equatable {
    public var operatingPolicyId: String
    public var number: Int?
    public var size: Int?
    public init(operatingPolicyId: String, number: Int? = nil, size: Int? = nil) {
        self.operatingPolicyId = operatingPolicyId
        self.number = number
        self.size = size
    }
    private enum CodingKeys: String, CodingKey {
        case operatingPolicyId = "operating_policy_id"; case number; case size
    }
}

/// A page of immutable operating-policy versions, newest first.
public struct OperatingPolicyPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var count: Int
    public var total: Int
    public var hasMore: Bool
    public var versions: [OperatingPolicy]
    public init(number: Int, size: Int, count: Int, total: Int, hasMore: Bool, versions: [OperatingPolicy]) {
        self.number = number
        self.size = size
        self.count = count
        self.total = total
        self.hasMore = hasMore
        self.versions = versions
    }
    private enum CodingKeys: String, CodingKey {
        case number; case size; case count; case total; case hasMore = "has_more"; case versions
    }
}

public struct UpdateOperatingPolicyRequest: Codable, Sendable, Equatable {
    public var operatingPolicyId: String
    public var expectedVersion: Int
    public var name: String?
    public var description: String?
    public var capabilities: OperatingPolicyCapabilitiesInput?
    public init(
        operatingPolicyId: String,
        expectedVersion: Int,
        name: String? = nil,
        description: String? = nil,
        capabilities: OperatingPolicyCapabilitiesInput? = nil
    ) {
        self.operatingPolicyId = operatingPolicyId; self.expectedVersion = expectedVersion
        self.name = name; self.description = description; self.capabilities = capabilities
    }
    private enum CodingKeys: String, CodingKey {
        case operatingPolicyId = "operating_policy_id"; case expectedVersion = "expected_version"
        case name; case description; case capabilities
    }
}

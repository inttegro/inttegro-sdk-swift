// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct TokenizeMobileMoneyPaymentMethodRequest: Codable, Sendable, Equatable {
    public var customData: CustomData?
    public var customerId: String
    public var type: PaymentMethodType
    public var mobileMoney: TokenizeMobileMoneyPaymentMethodRequestMobileMoney
    public var owner: PaymentMethodOwnerInput

    public init(
        customData: CustomData? = nil,
        customerId: String,
        type: PaymentMethodType,
        mobileMoney: TokenizeMobileMoneyPaymentMethodRequestMobileMoney,
        owner: PaymentMethodOwnerInput
    ) {
        self.customData = customData
        self.customerId = customerId
        self.type = type
        self.mobileMoney = mobileMoney
        self.owner = owner
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case customerId = "customer_id"
        case type
        case mobileMoney = "mobile_money"
        case owner
    }
}

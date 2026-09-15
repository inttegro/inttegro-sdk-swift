// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateOrderRequestPaymentMethodData: Codable, Sendable, Equatable {
    public var mobileMoney: UpdateOrderRequestPaymentMethodDataMobileMoney?
    public var type: PaymentMethodType

    public init(
        mobileMoney: UpdateOrderRequestPaymentMethodDataMobileMoney? = nil,
        type: PaymentMethodType
    ) {
        self.mobileMoney = mobileMoney
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case mobileMoney = "mobile_money"
        case type
    }
}

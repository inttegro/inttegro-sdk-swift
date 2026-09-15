// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PaymentMethodDataInput: Codable, Sendable, Equatable {
    public var mobileMoney: PaymentMethodDataInputMobileMoney?
    public var type: PaymentMethodType

    public init(
        mobileMoney: PaymentMethodDataInputMobileMoney? = nil,
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

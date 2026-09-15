// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PayOrderRequest: Codable, Sendable, Equatable {
    public var paymentMethodData: PaymentMethodDataInput?
    public var paymentMethodId: String?
    public var paidOutOfBand: Bool?
    public var orderId: String

    public init(
        paymentMethodData: PaymentMethodDataInput? = nil,
        paymentMethodId: String? = nil,
        paidOutOfBand: Bool? = nil,
        orderId: String
    ) {
        self.paymentMethodData = paymentMethodData
        self.paymentMethodId = paymentMethodId
        self.paidOutOfBand = paidOutOfBand
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodData = "payment_method_data"
        case paymentMethodId = "payment_method_id"
        case paidOutOfBand = "paid_out_of_band"
        case orderId = "order_id"
    }
}

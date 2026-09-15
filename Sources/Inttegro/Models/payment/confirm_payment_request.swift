// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ConfirmPaymentRequest: Codable, Sendable, Equatable {
    public var orderId: String
    public var paymentId: String
    public var confirmationId: String
    public var token: String

    public init(
        orderId: String,
        paymentId: String,
        confirmationId: String,
        token: String
    ) {
        self.orderId = orderId
        self.paymentId = paymentId
        self.confirmationId = confirmationId
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
        case paymentId = "payment_id"
        case confirmationId = "confirmation_id"
        case token
    }
}

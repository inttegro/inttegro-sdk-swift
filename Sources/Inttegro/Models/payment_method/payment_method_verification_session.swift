// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodVerificationSession: Codable, Sendable, Equatable {
    public var paymentMethodId: String
    public var status: String
    public var tokenSentAt: Date?
    public var expiresAt: Date?
    public var delivery: PaymentMethodVerificationDelivery?

    public init(
        paymentMethodId: String,
        status: String,
        tokenSentAt: Date? = nil,
        expiresAt: Date? = nil,
        delivery: PaymentMethodVerificationDelivery? = nil
    ) {
        self.paymentMethodId = paymentMethodId
        self.status = status
        self.tokenSentAt = tokenSentAt
        self.expiresAt = expiresAt
        self.delivery = delivery
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
        case status
        case tokenSentAt = "token_sent_at"
        case expiresAt = "expires_at"
        case delivery
    }
}

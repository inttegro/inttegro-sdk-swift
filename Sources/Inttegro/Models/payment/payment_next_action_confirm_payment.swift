// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPayment: Codable, Sendable, Equatable {
    public var expiresAt: Date
    public var scheme: String
    public var request: PaymentNextActionConfirmPaymentRequest?
    public var attempt: PaymentNextActionConfirmPaymentAttempt?
    public var confirmed: Bool
    public var status: String

    public init(
        expiresAt: Date,
        scheme: String,
        request: PaymentNextActionConfirmPaymentRequest? = nil,
        attempt: PaymentNextActionConfirmPaymentAttempt? = nil,
        confirmed: Bool,
        status: String
    ) {
        self.expiresAt = expiresAt
        self.scheme = scheme
        self.request = request
        self.attempt = attempt
        self.confirmed = confirmed
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case expiresAt = "expires_at"
        case scheme
        case request
        case attempt
        case confirmed
        case status
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentAttempt: Codable, Sendable, Equatable {
    public var paymentMethodType: String?
    public var paymentMethodId: String?
    public var error: PaymentAttemptError?
    public var reference: String?
    public var status: PaymentAttemptStatus
    public var initiatedAt: Date
    public var succeededAt: Date?

    public init(
        paymentMethodType: String? = nil,
        paymentMethodId: String? = nil,
        error: PaymentAttemptError? = nil,
        reference: String? = nil,
        status: PaymentAttemptStatus,
        initiatedAt: Date,
        succeededAt: Date? = nil
    ) {
        self.paymentMethodType = paymentMethodType
        self.paymentMethodId = paymentMethodId
        self.error = error
        self.reference = reference
        self.status = status
        self.initiatedAt = initiatedAt
        self.succeededAt = succeededAt
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodType = "payment_method_type"
        case paymentMethodId = "payment_method_id"
        case error
        case reference
        case status
        case initiatedAt = "initiated_at"
        case succeededAt = "succeeded_at"
    }
}

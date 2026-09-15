// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodDeletion: Codable, Sendable, Equatable {
    public var deleted: Bool
    public var paymentMethodId: String

    public init(
        deleted: Bool,
        paymentMethodId: String
    ) {
        self.deleted = deleted
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case deleted
        case paymentMethodId = "payment_method_id"
    }
}

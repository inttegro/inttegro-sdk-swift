// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupPaymentMethodRequest: Codable, Sendable, Equatable {
    public var paymentMethodId: String

    public init(
        paymentMethodId: String
    ) {
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
    }
}

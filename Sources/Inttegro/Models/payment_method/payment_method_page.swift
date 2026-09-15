// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodPage: Codable, Sendable, Equatable {
    public var number: Int
    public var paymentMethods: [PaymentMethod]
    public var size: Int

    public init(
        number: Int,
        paymentMethods: [PaymentMethod],
        size: Int
    ) {
        self.number = number
        self.paymentMethods = paymentMethods
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case paymentMethods = "payment_methods"
        case size
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderShippingLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var shipping: OrderShippingLineItemShipping

    public init(
        type: String,
        shipping: OrderShippingLineItemShipping
    ) {
        self.type = type
        self.shipping = shipping
    }
}

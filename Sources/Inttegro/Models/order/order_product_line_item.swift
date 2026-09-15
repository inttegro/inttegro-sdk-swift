// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderProductLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var product: OrderProductLineItemProduct

    public init(
        type: String,
        product: OrderProductLineItemProduct
    ) {
        self.type = type
        self.product = product
    }
}

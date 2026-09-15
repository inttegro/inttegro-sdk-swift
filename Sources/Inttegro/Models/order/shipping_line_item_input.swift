// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ShippingLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var shipping: ShippingDetailsInput

    public init(
        type: LineItemType,
        shipping: ShippingDetailsInput
    ) {
        self.type = type
        self.shipping = shipping
    }
}

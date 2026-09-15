// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var product: ProductLineItemInputProduct

    public init(
        type: LineItemType,
        product: ProductLineItemInputProduct
    ) {
        self.type = type
        self.product = product
    }
}

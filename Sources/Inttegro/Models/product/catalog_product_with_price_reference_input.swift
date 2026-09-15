// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CatalogProductWithPriceReferenceInput: Codable, Sendable, Equatable {
    public var priceId: String
    public var productId: String
    public var quantity: Int

    public init(
        priceId: String,
        productId: String,
        quantity: Int
    ) {
        self.priceId = priceId
        self.productId = productId
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case priceId = "price_id"
        case productId = "product_id"
        case quantity
    }
}

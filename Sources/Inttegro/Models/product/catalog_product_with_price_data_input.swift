// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CatalogProductWithPriceDataInput: Codable, Sendable, Equatable {
    public var price: PriceParams
    public var productId: String
    public var quantity: Int

    public init(
        price: PriceParams,
        productId: String,
        quantity: Int
    ) {
        self.price = price
        self.productId = productId
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case price
        case productId = "product_id"
        case quantity
    }
}

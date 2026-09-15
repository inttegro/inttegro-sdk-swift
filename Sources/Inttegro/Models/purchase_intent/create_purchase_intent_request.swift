// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequest: Codable, Sendable, Equatable {
    public var product: CreatePurchaseIntentRequestProduct?
    public var productId: String?
    public var price: CreatePurchaseIntentRequestPrice?
    public var priceId: String?
    public var usage: CreatePurchaseIntentRequestUsage?
    public var expiresAt: Date?
    public var quantity: CreatePurchaseIntentRequestQuantity

    public init(
        product: CreatePurchaseIntentRequestProduct? = nil,
        productId: String? = nil,
        price: CreatePurchaseIntentRequestPrice? = nil,
        priceId: String? = nil,
        usage: CreatePurchaseIntentRequestUsage? = nil,
        expiresAt: Date? = nil,
        quantity: CreatePurchaseIntentRequestQuantity
    ) {
        self.product = product
        self.productId = productId
        self.price = price
        self.priceId = priceId
        self.usage = usage
        self.expiresAt = expiresAt
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case product
        case productId = "product_id"
        case price
        case priceId = "price_id"
        case usage
        case expiresAt = "expires_at"
        case quantity
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentVariant: Codable, Sendable, Equatable {
    public var active: Bool
    public var position: Int?
    public var price: PurchaseIntentPrice?
    public var product: PurchaseIntentProduct?
    public var productId: String
    public var variantValues: VariantValues

    public init(
        active: Bool,
        position: Int? = nil,
        price: PurchaseIntentPrice? = nil,
        product: PurchaseIntentProduct? = nil,
        productId: String,
        variantValues: VariantValues
    ) {
        self.active = active
        self.position = position
        self.price = price
        self.product = product
        self.productId = productId
        self.variantValues = variantValues
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case position
        case price
        case product
        case productId = "product_id"
        case variantValues = "variant_values"
    }
}

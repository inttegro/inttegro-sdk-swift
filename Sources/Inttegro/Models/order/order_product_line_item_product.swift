// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderProductLineItemProduct: Codable, Sendable, Equatable {
    public var id: String
    public var productId: String?
    public var priceId: String?
    public var reference: String?
    public var about: String?
    public var customData: CustomData?
    public var taxCode: String?
    public var name: String
    public var category: String?
    public var type: String?
    public var price: Price
    public var quantity: Int

    public init(
        id: String,
        productId: String? = nil,
        priceId: String? = nil,
        reference: String? = nil,
        about: String? = nil,
        customData: CustomData? = nil,
        taxCode: String? = nil,
        name: String,
        category: String? = nil,
        type: String? = nil,
        price: Price,
        quantity: Int
    ) {
        self.id = id
        self.productId = productId
        self.priceId = priceId
        self.reference = reference
        self.about = about
        self.customData = customData
        self.taxCode = taxCode
        self.name = name
        self.category = category
        self.type = type
        self.price = price
        self.quantity = quantity
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case productId = "product_id"
        case priceId = "price_id"
        case reference
        case about
        case customData = "custom_data"
        case taxCode = "tax_code"
        case name
        case category
        case type
        case price
        case quantity
    }
}

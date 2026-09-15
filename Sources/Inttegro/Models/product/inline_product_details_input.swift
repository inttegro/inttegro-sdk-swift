// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct InlineProductDetailsInput: Codable, Sendable, Equatable {
    public var about: String?
    public var customData: CustomDataInput?
    public var reference: String?
    public var taxCode: String?
    public var name: String
    public var price: PriceParams
    public var quantity: Int
    public var type: ProductType

    public init(
        about: String? = nil,
        customData: CustomDataInput? = nil,
        reference: String? = nil,
        taxCode: String? = nil,
        name: String,
        price: PriceParams,
        quantity: Int,
        type: ProductType
    ) {
        self.about = about
        self.customData = customData
        self.reference = reference
        self.taxCode = taxCode
        self.name = name
        self.price = price
        self.quantity = quantity
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case about
        case customData = "custom_data"
        case reference
        case taxCode = "tax_code"
        case name
        case price
        case quantity
        case type
    }
}

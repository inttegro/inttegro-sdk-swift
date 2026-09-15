// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateProductRequest: Codable, Sendable, Equatable {
    public var type: ProductType?
    public var name: String?
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var shipment: ProductShipmentInput?
    public var dimensions: ProductDimensionsInput?
    public var unitDimension: String?
    public var media: ProductMediaInput?
    public var images: [String]?
    public var attributes: [ProductAttributeInput]?
    public var customData: CustomData?
    public var productId: String

    public init(
        type: ProductType? = nil,
        name: String? = nil,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        shipment: ProductShipmentInput? = nil,
        dimensions: ProductDimensionsInput? = nil,
        unitDimension: String? = nil,
        media: ProductMediaInput? = nil,
        images: [String]? = nil,
        attributes: [ProductAttributeInput]? = nil,
        customData: CustomData? = nil,
        productId: String
    ) {
        self.type = type
        self.name = name
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.shipment = shipment
        self.dimensions = dimensions
        self.unitDimension = unitDimension
        self.media = media
        self.images = images
        self.attributes = attributes
        self.customData = customData
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case name
        case description
        case about
        case taxCode = "tax_code"
        case category
        case shipment
        case dimensions
        case unitDimension = "unit_dimension"
        case media
        case images
        case attributes
        case customData = "custom_data"
        case productId = "product_id"
    }
}

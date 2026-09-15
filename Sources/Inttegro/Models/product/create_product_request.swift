// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateProductRequest: Codable, Sendable, Equatable {
    public var reference: String?
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var shipment: ProductShipmentInput?
    public var dimensions: ProductDimensionsInput?
    public var unitDimension: String?
    public var media: ProductMediaInput?
    public var attributes: [ProductAttributeInput]?
    public var publish: Bool?
    public var customData: CustomData?
    public var type: ProductType
    public var name: String

    public init(
        reference: String? = nil,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        shipment: ProductShipmentInput? = nil,
        dimensions: ProductDimensionsInput? = nil,
        unitDimension: String? = nil,
        media: ProductMediaInput? = nil,
        attributes: [ProductAttributeInput]? = nil,
        publish: Bool? = nil,
        customData: CustomData? = nil,
        type: ProductType,
        name: String
    ) {
        self.reference = reference
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.shipment = shipment
        self.dimensions = dimensions
        self.unitDimension = unitDimension
        self.media = media
        self.attributes = attributes
        self.publish = publish
        self.customData = customData
        self.type = type
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case description
        case about
        case taxCode = "tax_code"
        case category
        case shipment
        case dimensions
        case unitDimension = "unit_dimension"
        case media
        case attributes
        case publish
        case customData = "custom_data"
        case type
        case name
    }
}

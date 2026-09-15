// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentProduct: Codable, Sendable, Equatable {
    public var id: String
    public var about: String?
    public var active: Bool
    public var archivedAt: Date?
    public var attributes: [PurchaseIntentProductAttributesItem]?
    public var category: String?
    public var createdAt: Date
    public var customData: CustomData?
    public var description: String?
    public var dimensions: ProductDimensions?
    public var media: ProductMedia?
    public var name: String
    public var publishedAt: Date?
    public var reference: String?
    public var shipment: ProductShipment?
    public var taxCode: String?
    public var type: ProductType
    public var unitDim: String?
    public var updatedAt: Date?
    public var prices: [ProductPriceSummary]?
    public var variantSetId: String?

    public init(
        id: String,
        about: String? = nil,
        active: Bool,
        archivedAt: Date? = nil,
        attributes: [PurchaseIntentProductAttributesItem]? = nil,
        category: String? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        description: String? = nil,
        dimensions: ProductDimensions? = nil,
        media: ProductMedia? = nil,
        name: String,
        publishedAt: Date? = nil,
        reference: String? = nil,
        shipment: ProductShipment? = nil,
        taxCode: String? = nil,
        type: ProductType,
        unitDim: String? = nil,
        updatedAt: Date? = nil,
        prices: [ProductPriceSummary]? = nil,
        variantSetId: String? = nil
    ) {
        self.id = id
        self.about = about
        self.active = active
        self.archivedAt = archivedAt
        self.attributes = attributes
        self.category = category
        self.createdAt = createdAt
        self.customData = customData
        self.description = description
        self.dimensions = dimensions
        self.media = media
        self.name = name
        self.publishedAt = publishedAt
        self.reference = reference
        self.shipment = shipment
        self.taxCode = taxCode
        self.type = type
        self.unitDim = unitDim
        self.updatedAt = updatedAt
        self.prices = prices
        self.variantSetId = variantSetId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case about
        case active
        case archivedAt = "archived_at"
        case attributes
        case category
        case createdAt = "created_at"
        case customData = "custom_data"
        case description
        case dimensions
        case media
        case name
        case publishedAt = "published_at"
        case reference
        case shipment
        case taxCode = "tax_code"
        case type
        case unitDim = "unit_dim"
        case updatedAt = "updated_at"
        case prices
        case variantSetId = "variant_set_id"
    }
}

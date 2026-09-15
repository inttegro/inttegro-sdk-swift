// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Product: Codable, Sendable, Equatable {
    public var id: String
    public var type: ProductType
    public var reference: String?
    public var name: String
    public var description: String?
    public var about: String?
    public var taxCode: String?
    public var category: String?
    public var prices: [ProductPriceSummary]?
    public var shipment: ProductShipment?
    public var media: ProductMedia?
    public var attributes: [ProductAttribute]?
    public var dimensions: ProductDimensions?
    public var customData: CustomData?
    public var active: Bool
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?
    public var publishedAt: Date?
    public var unitDim: String?

    public init(
        id: String,
        type: ProductType,
        reference: String? = nil,
        name: String,
        description: String? = nil,
        about: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        prices: [ProductPriceSummary]? = nil,
        shipment: ProductShipment? = nil,
        media: ProductMedia? = nil,
        attributes: [ProductAttribute]? = nil,
        dimensions: ProductDimensions? = nil,
        customData: CustomData? = nil,
        active: Bool,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil,
        publishedAt: Date? = nil,
        unitDim: String? = nil
    ) {
        self.id = id
        self.type = type
        self.reference = reference
        self.name = name
        self.description = description
        self.about = about
        self.taxCode = taxCode
        self.category = category
        self.prices = prices
        self.shipment = shipment
        self.media = media
        self.attributes = attributes
        self.dimensions = dimensions
        self.customData = customData
        self.active = active
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
        self.publishedAt = publishedAt
        self.unitDim = unitDim
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case reference
        case name
        case description
        case about
        case taxCode = "tax_code"
        case category
        case prices
        case shipment
        case media
        case attributes
        case dimensions
        case customData = "custom_data"
        case active
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
        case publishedAt = "published_at"
        case unitDim = "unit_dim"
    }
}

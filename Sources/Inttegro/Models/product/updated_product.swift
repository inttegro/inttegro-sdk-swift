// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UpdatedProduct: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var description: String?
    public var about: String?
    public var type: ProductType
    public var reference: String?
    public var taxCode: String?
    public var category: String?
    public var customData: CustomData?
    public var dimensions: ProductDimensions?
    public var prices: [ProductPriceSummary]?
    public var unitDim: String?
    public var createdAt: Date
    public var updatedAt: Date?

    public init(
        id: String,
        name: String,
        description: String? = nil,
        about: String? = nil,
        type: ProductType,
        reference: String? = nil,
        taxCode: String? = nil,
        category: String? = nil,
        customData: CustomData? = nil,
        dimensions: ProductDimensions? = nil,
        prices: [ProductPriceSummary]? = nil,
        unitDim: String? = nil,
        createdAt: Date,
        updatedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.about = about
        self.type = type
        self.reference = reference
        self.taxCode = taxCode
        self.category = category
        self.customData = customData
        self.dimensions = dimensions
        self.prices = prices
        self.unitDim = unitDim
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case about
        case type
        case reference
        case taxCode = "tax_code"
        case category
        case customData = "custom_data"
        case dimensions
        case prices
        case unitDim = "unit_dim"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

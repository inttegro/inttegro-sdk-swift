// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentVariantSet: Codable, Sendable, Equatable {
    public var active: Bool
    public var defaultProductId: String?
    public var description: String?
    public var id: String
    public var name: String
    public var reference: String?
    public var variantAxes: [PurchaseIntentVariantAxis]
    public var variants: [PurchaseIntentVariant]

    public init(
        active: Bool,
        defaultProductId: String? = nil,
        description: String? = nil,
        id: String,
        name: String,
        reference: String? = nil,
        variantAxes: [PurchaseIntentVariantAxis],
        variants: [PurchaseIntentVariant]
    ) {
        self.active = active
        self.defaultProductId = defaultProductId
        self.description = description
        self.id = id
        self.name = name
        self.reference = reference
        self.variantAxes = variantAxes
        self.variants = variants
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case defaultProductId = "default_product_id"
        case description
        case id
        case name
        case reference
        case variantAxes = "variant_axes"
        case variants
    }
}

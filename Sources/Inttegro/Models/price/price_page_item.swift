// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PricePageItem: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var about: String?
    public var active: Bool
    public var nominal: Amount
    public var productId: String?
    public var product: PriceEmbeddedProduct?
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?

    public init(
        id: String,
        label: String? = nil,
        about: String? = nil,
        active: Bool,
        nominal: Amount,
        productId: String? = nil,
        product: PriceEmbeddedProduct? = nil,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil
    ) {
        self.id = id
        self.label = label
        self.about = about
        self.active = active
        self.nominal = nominal
        self.productId = productId
        self.product = product
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case about
        case active
        case nominal
        case productId = "product_id"
        case product
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
    }
}

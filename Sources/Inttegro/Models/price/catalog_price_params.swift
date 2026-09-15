// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CatalogPriceParams: Codable, Sendable, Equatable {
    public var productId: String?
    public var label: String?
    public var about: String?
    public var amount: AmountParams

    public init(
        productId: String? = nil,
        label: String? = nil,
        about: String? = nil,
        amount: AmountParams
    ) {
        self.productId = productId
        self.label = label
        self.about = about
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case label
        case about
        case amount
    }
}

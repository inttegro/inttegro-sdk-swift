// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct AddProductPriceRequest: Codable, Sendable, Equatable {
    public var label: String?
    public var about: String?
    public var productId: String
    public var amount: AmountParams

    public init(
        label: String? = nil,
        about: String? = nil,
        productId: String,
        amount: AmountParams
    ) {
        self.label = label
        self.about = about
        self.productId = productId
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case about
        case productId = "product_id"
        case amount
    }
}

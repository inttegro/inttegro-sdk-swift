// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductActionRequest: Codable, Sendable, Equatable {
    public var productId: String

    public init(
        productId: String
    ) {
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
    }
}

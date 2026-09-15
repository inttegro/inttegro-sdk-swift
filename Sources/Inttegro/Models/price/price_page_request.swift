// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PricePageRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int?
    public var pageSize: Int?
    public var productId: String?

    public init(
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        productId: String? = nil
    ) {
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.productId = productId
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case productId = "product_id"
    }
}

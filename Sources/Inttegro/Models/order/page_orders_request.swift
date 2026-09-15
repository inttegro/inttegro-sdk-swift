// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageOrdersRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int?
    public var customerId: String?
    public var pageSize: Int

    public init(
        pageNumber: Int? = nil,
        customerId: String? = nil,
        pageSize: Int
    ) {
        self.pageNumber = pageNumber
        self.customerId = customerId
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case customerId = "customer_id"
        case pageSize = "page_size"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PaymentMethodPageRequest: Codable, Sendable, Equatable {
    public var customerId: String?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        customerId: String? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.customerId = customerId
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

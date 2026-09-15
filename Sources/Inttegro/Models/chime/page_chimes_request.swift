// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageChimesRequest: Codable, Sendable, Equatable {
    public var customerId: String?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var recipient: String?

    public init(
        customerId: String? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        recipient: String? = nil
    ) {
        self.customerId = customerId
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.recipient = recipient
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case recipient
    }
}

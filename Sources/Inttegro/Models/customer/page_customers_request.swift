// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageCustomersRequest: Codable, Sendable, Equatable {
    public var pageSize: Int?
    public var pageNumber: Int

    public init(
        pageSize: Int? = nil,
        pageNumber: Int
    ) {
        self.pageSize = pageSize
        self.pageNumber = pageNumber
    }

    private enum CodingKeys: String, CodingKey {
        case pageSize = "page_size"
        case pageNumber = "page_number"
    }
}

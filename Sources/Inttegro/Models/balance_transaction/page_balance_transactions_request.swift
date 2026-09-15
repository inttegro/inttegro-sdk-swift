// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageBalanceTransactionsRequest: Codable, Sendable, Equatable {
    public var pageNumber: Int
    public var pageSize: Int

    public init(
        pageNumber: Int,
        pageSize: Int
    ) {
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

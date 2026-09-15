// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageFilesRequest: Codable, Sendable, Equatable {
    public var purpose: String?
    public var status: FileStatus?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var createdAfter: Date?
    public var createdBefore: Date?

    public init(
        purpose: String? = nil,
        status: FileStatus? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil,
        createdAfter: Date? = nil,
        createdBefore: Date? = nil
    ) {
        self.purpose = purpose
        self.status = status
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.createdAfter = createdAfter
        self.createdBefore = createdBefore
    }

    private enum CodingKeys: String, CodingKey {
        case purpose
        case status
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case createdAfter = "created_after"
        case createdBefore = "created_before"
    }
}

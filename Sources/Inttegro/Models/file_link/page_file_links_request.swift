// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageFileLinksRequest: Codable, Sendable, Equatable {
    public var fileId: String?
    public var status: FileLinkStatus?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        fileId: String? = nil,
        status: FileLinkStatus? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.fileId = fileId
        self.status = status
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
        case status
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageUploadRequestsRequest: Codable, Sendable, Equatable {
    public var purpose: String?
    public var status: UploadRequestStatus?
    public var resource: FileResourceInput?
    public var pageNumber: Int?
    public var pageSize: Int?

    public init(
        purpose: String? = nil,
        status: UploadRequestStatus? = nil,
        resource: FileResourceInput? = nil,
        pageNumber: Int? = nil,
        pageSize: Int? = nil
    ) {
        self.purpose = purpose
        self.status = status
        self.resource = resource
        self.pageNumber = pageNumber
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case purpose
        case status
        case resource
        case pageNumber = "page_number"
        case pageSize = "page_size"
    }
}

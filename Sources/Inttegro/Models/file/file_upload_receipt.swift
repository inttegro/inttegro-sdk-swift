// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileUploadReceipt: Codable, Sendable, Equatable {
    public var contentType: String
    public var createdAt: Date
    public var filename: String?
    public var id: String
    public var name: String?
    public var size: Int
    public var status: FileStatus

    public init(
        contentType: String,
        createdAt: Date,
        filename: String? = nil,
        id: String,
        name: String? = nil,
        size: Int,
        status: FileStatus
    ) {
        self.contentType = contentType
        self.createdAt = createdAt
        self.filename = filename
        self.id = id
        self.name = name
        self.size = size
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case contentType = "content_type"
        case createdAt = "created_at"
        case filename
        case id
        case name
        case size
        case status
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileSource: Codable, Sendable, Equatable {
    public var type: FileSourceType?
    public var service: String?
    public var uploadRequestId: String?

    public init(
        type: FileSourceType? = nil,
        service: String? = nil,
        uploadRequestId: String? = nil
    ) {
        self.type = type
        self.service = service
        self.uploadRequestId = uploadRequestId
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case service
        case uploadRequestId = "upload_request_id"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var uploadRequests: [UploadRequest]

    public init(
        number: Int,
        size: Int,
        uploadRequests: [UploadRequest]
    ) {
        self.number = number
        self.size = size
        self.uploadRequests = uploadRequests
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case uploadRequests = "upload_requests"
    }
}

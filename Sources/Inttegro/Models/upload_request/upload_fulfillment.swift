// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadFulfillment: Codable, Sendable, Equatable {
    public var uploadRequest: UploadRequest
    public var file: FileUploadReceipt

    public init(
        uploadRequest: UploadRequest,
        file: FileUploadReceipt
    ) {
        self.uploadRequest = uploadRequest
        self.file = file
    }

    private enum CodingKeys: String, CodingKey {
        case uploadRequest = "upload_request"
        case file
    }
}

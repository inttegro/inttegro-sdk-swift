// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestAttempt: Codable, Sendable, Equatable {
    public var attemptedAt: Date
    public var contentType: String?
    public var declaredSize: Int?
    public var error: UploadRequestLatestError?
    public var failedAt: Date?
    public var fileId: String?
    public var filename: String?
    public var id: String
    public var ordinal: Int
    public var review: UploadRequestReview?
    public var status: String
    public var succeededAt: Date?
    public var uploadRequestId: String

    public init(
        attemptedAt: Date,
        contentType: String? = nil,
        declaredSize: Int? = nil,
        error: UploadRequestLatestError? = nil,
        failedAt: Date? = nil,
        fileId: String? = nil,
        filename: String? = nil,
        id: String,
        ordinal: Int,
        review: UploadRequestReview? = nil,
        status: String,
        succeededAt: Date? = nil,
        uploadRequestId: String
    ) {
        self.attemptedAt = attemptedAt
        self.contentType = contentType
        self.declaredSize = declaredSize
        self.error = error
        self.failedAt = failedAt
        self.fileId = fileId
        self.filename = filename
        self.id = id
        self.ordinal = ordinal
        self.review = review
        self.status = status
        self.succeededAt = succeededAt
        self.uploadRequestId = uploadRequestId
    }

    private enum CodingKeys: String, CodingKey {
        case attemptedAt = "attempted_at"
        case contentType = "content_type"
        case declaredSize = "declared_size"
        case error
        case failedAt = "failed_at"
        case fileId = "file_id"
        case filename
        case id
        case ordinal
        case review
        case status
        case succeededAt = "succeeded_at"
        case uploadRequestId = "upload_request_id"
    }
}

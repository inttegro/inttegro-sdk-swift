// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestReview: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var decision: UploadReviewDecision
    public var fileId: String?
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReason]?
    public var reviewedAt: Date
    public var type: UploadReviewType

    public init(
        createdAt: Date,
        decision: UploadReviewDecision,
        fileId: String? = nil,
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReason]? = nil,
        reviewedAt: Date,
        type: UploadReviewType
    ) {
        self.createdAt = createdAt
        self.decision = decision
        self.fileId = fileId
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.reviewedAt = reviewedAt
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case decision
        case fileId = "file_id"
        case publicMessage = "public_message"
        case reasons
        case reviewedAt = "reviewed_at"
        case type
    }
}

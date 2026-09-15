// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ReviewUploadRequestAttemptByIDRequest: Codable, Sendable, Equatable {
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReasonInput]?
    public var attemptId: String
    public var decision: UploadReviewDecision
    public var id: String

    public init(
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReasonInput]? = nil,
        attemptId: String,
        decision: UploadReviewDecision,
        id: String
    ) {
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.attemptId = attemptId
        self.decision = decision
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case publicMessage = "public_message"
        case reasons
        case attemptId = "attempt_id"
        case decision
        case id
    }
}

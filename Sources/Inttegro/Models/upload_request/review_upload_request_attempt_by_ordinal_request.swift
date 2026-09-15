// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ReviewUploadRequestAttemptByOrdinalRequest: Codable, Sendable, Equatable {
    public var publicMessage: String?
    public var reasons: [UploadRequestReviewReasonInput]?
    public var attemptOrdinal: Int
    public var decision: UploadReviewDecision
    public var id: String

    public init(
        publicMessage: String? = nil,
        reasons: [UploadRequestReviewReasonInput]? = nil,
        attemptOrdinal: Int,
        decision: UploadReviewDecision,
        id: String
    ) {
        self.publicMessage = publicMessage
        self.reasons = reasons
        self.attemptOrdinal = attemptOrdinal
        self.decision = decision
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case publicMessage = "public_message"
        case reasons
        case attemptOrdinal = "attempt_ordinal"
        case decision
        case id
    }
}

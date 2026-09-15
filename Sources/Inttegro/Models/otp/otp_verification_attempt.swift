// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OTPVerificationAttempt: Codable, Sendable, Equatable {
    public var attemptedAt: Date
    public var id: String
    public var presentedToken: String
    public var recipient: String
    public var result: OTPVerificationAttemptResult

    public init(
        attemptedAt: Date,
        id: String,
        presentedToken: String,
        recipient: String,
        result: OTPVerificationAttemptResult
    ) {
        self.attemptedAt = attemptedAt
        self.id = id
        self.presentedToken = presentedToken
        self.recipient = recipient
        self.result = result
    }

    private enum CodingKeys: String, CodingKey {
        case attemptedAt = "attempted_at"
        case id
        case presentedToken = "presented_token"
        case recipient
        case result
    }
}

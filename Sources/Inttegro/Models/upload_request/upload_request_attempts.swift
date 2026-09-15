// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestAttempts: Codable, Sendable, Equatable {
    public var maxAttempts: Int?
    public var attemptCount: Int
    public var failedAttemptCount: Int
    public var lastAttemptedAt: Date?

    public init(
        maxAttempts: Int? = nil,
        attemptCount: Int,
        failedAttemptCount: Int,
        lastAttemptedAt: Date? = nil
    ) {
        self.maxAttempts = maxAttempts
        self.attemptCount = attemptCount
        self.failedAttemptCount = failedAttemptCount
        self.lastAttemptedAt = lastAttemptedAt
    }

    private enum CodingKeys: String, CodingKey {
        case maxAttempts = "max_attempts"
        case attemptCount = "attempt_count"
        case failedAttemptCount = "failed_attempt_count"
        case lastAttemptedAt = "last_attempted_at"
    }
}

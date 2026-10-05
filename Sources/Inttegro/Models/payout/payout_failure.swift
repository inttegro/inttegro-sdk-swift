// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Caller-safe information about a terminal payout failure.
public struct PayoutFailure: Codable, Sendable, Equatable {
    public var detail: String
    public var reason: PayoutFailureReason
    public var retryable: Bool

    public init(detail: String, reason: PayoutFailureReason, retryable: Bool) {
        self.detail = detail
        self.reason = reason
        self.retryable = retryable
    }
}

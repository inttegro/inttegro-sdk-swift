// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPaymentAttempt: Codable, Sendable, Equatable {
    public var status: String
    public var confirmed: Bool
    public var reason: String
    public var executedAt: Date?
    public var createdAt: Date

    public init(
        status: String,
        confirmed: Bool,
        reason: String,
        executedAt: Date? = nil,
        createdAt: Date
    ) {
        self.status = status
        self.confirmed = confirmed
        self.reason = reason
        self.executedAt = executedAt
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case confirmed
        case reason
        case executedAt = "executed_at"
        case createdAt = "created_at"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutError: Codable, Sendable, Equatable {
    public var cause: String
    public var message: String
    public var occurredAt: Date
    public var type: String

    public init(
        cause: String,
        message: String,
        occurredAt: Date,
        type: String
    ) {
        self.cause = cause
        self.message = message
        self.occurredAt = occurredAt
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case cause
        case message
        case occurredAt = "occurred_at"
        case type
    }
}

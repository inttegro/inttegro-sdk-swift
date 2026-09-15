// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ScheduleChimeRequestRequestMeta: Codable, Sendable, Equatable {
    public var idempotencyKey: String?

    public init(
        idempotencyKey: String? = nil
    ) {
        self.idempotencyKey = idempotencyKey
    }

    private enum CodingKeys: String, CodingKey {
        case idempotencyKey = "idempotency_key"
    }
}

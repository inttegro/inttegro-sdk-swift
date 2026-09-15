// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodVerification: Codable, Sendable, Equatable {
    public var completedAt: Date?
    public var initiatedAt: Date
    public var mechanism: String?
    public var requestId: String
    public var type: String

    public init(
        completedAt: Date? = nil,
        initiatedAt: Date,
        mechanism: String? = nil,
        requestId: String,
        type: String
    ) {
        self.completedAt = completedAt
        self.initiatedAt = initiatedAt
        self.mechanism = mechanism
        self.requestId = requestId
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case completedAt = "completed_at"
        case initiatedAt = "initiated_at"
        case mechanism
        case requestId = "request_id"
        case type
    }
}

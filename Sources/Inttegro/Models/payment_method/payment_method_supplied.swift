// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSupplied: Codable, Sendable, Equatable {
    public var attemptId: String?
    public var by: String
    public var channel: String?
    public var resourceId: String?
    public var resourceType: String?
    public var suppliedAt: Date

    public init(
        attemptId: String? = nil,
        by: String,
        channel: String? = nil,
        resourceId: String? = nil,
        resourceType: String? = nil,
        suppliedAt: Date
    ) {
        self.attemptId = attemptId
        self.by = by
        self.channel = channel
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.suppliedAt = suppliedAt
    }

    private enum CodingKeys: String, CodingKey {
        case attemptId = "attempt_id"
        case by
        case channel
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case suppliedAt = "supplied_at"
    }
}

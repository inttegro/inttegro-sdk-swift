// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ScheduleCancelDetail: Codable, Sendable, Equatable {
    public var chimeIds: [String]?
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var errors: [ScheduleError]?
    public var executedAt: Date?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String
    public var canceledAt: Date?

    public init(
        chimeIds: [String]? = nil,
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        errors: [ScheduleError]? = nil,
        executedAt: Date? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String,
        canceledAt: Date? = nil
    ) {
        self.chimeIds = chimeIds
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.errors = errors
        self.executedAt = executedAt
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
        self.canceledAt = canceledAt
    }

    private enum CodingKeys: String, CodingKey {
        case chimeIds = "chime_ids"
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case errors
        case executedAt = "executed_at"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
        case canceledAt = "canceled_at"
    }
}

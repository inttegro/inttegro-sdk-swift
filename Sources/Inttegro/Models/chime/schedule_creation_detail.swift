// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ScheduleCreationDetail: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var executedAt: Date?
    public var fullMessage: String
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]?
    public var sendAfter: Date
    public var senderId: String

    public init(
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        executedAt: Date? = nil,
        fullMessage: String,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String]? = nil,
        sendAfter: Date,
        senderId: String
    ) {
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.executedAt = executedAt
        self.fullMessage = fullMessage
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case executedAt = "executed_at"
        case fullMessage = "full_message"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

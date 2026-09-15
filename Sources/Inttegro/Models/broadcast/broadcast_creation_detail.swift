// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct BroadcastCreationDetail: Codable, Sendable, Equatable {
    public var content: String
    public var createdAt: Date
    public var customerIds: [String]?
    public var email: ChimeEmailMessage?
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipients: [String]
    public var sendAfter: Date
    public var senderId: String

    public init(
        content: String,
        createdAt: Date,
        customerIds: [String]? = nil,
        email: ChimeEmailMessage? = nil,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipients: [String],
        sendAfter: Date,
        senderId: String
    ) {
        self.content = content
        self.createdAt = createdAt
        self.customerIds = customerIds
        self.email = email
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case content
        case createdAt = "created_at"
        case customerIds = "customer_ids"
        case email
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipients
        case sendAfter = "send_after"
        case senderId = "sender_id"
    }
}

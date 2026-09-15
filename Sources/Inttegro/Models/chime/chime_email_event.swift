// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailEvent: Codable, Sendable, Equatable {
    public var bounceSubType: String?
    public var bounceType: String?
    public var complaintSubType: String?
    public var id: String
    public var occurredAt: Date
    public var provider: String
    public var providerMessageId: String
    public var reason: String?
    public var reasonCode: String?
    public var recipient: String?
    public var source: String?
    public var suppressRecipient: Bool?
    public var temporary: Bool?
    public var type: String

    public init(
        bounceSubType: String? = nil,
        bounceType: String? = nil,
        complaintSubType: String? = nil,
        id: String,
        occurredAt: Date,
        provider: String,
        providerMessageId: String,
        reason: String? = nil,
        reasonCode: String? = nil,
        recipient: String? = nil,
        source: String? = nil,
        suppressRecipient: Bool? = nil,
        temporary: Bool? = nil,
        type: String
    ) {
        self.bounceSubType = bounceSubType
        self.bounceType = bounceType
        self.complaintSubType = complaintSubType
        self.id = id
        self.occurredAt = occurredAt
        self.provider = provider
        self.providerMessageId = providerMessageId
        self.reason = reason
        self.reasonCode = reasonCode
        self.recipient = recipient
        self.source = source
        self.suppressRecipient = suppressRecipient
        self.temporary = temporary
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case bounceSubType = "bounce_sub_type"
        case bounceType = "bounce_type"
        case complaintSubType = "complaint_sub_type"
        case id
        case occurredAt = "occurred_at"
        case provider
        case providerMessageId = "provider_message_id"
        case reason
        case reasonCode = "reason_code"
        case recipient
        case source
        case suppressRecipient = "suppress_recipient"
        case temporary
        case type
    }
}

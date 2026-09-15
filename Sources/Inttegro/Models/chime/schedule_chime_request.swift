// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ScheduleChimeRequest: Codable, Sendable, Equatable {
    public var requestMeta: ScheduleChimeRequestRequestMeta?
    public var fullMessage: String?
    public var email: ChimeEmailMessageInput?
    public var messageTemplate: MessageTemplateReferenceInput?
    public var senderId: String?
    public var purpose: String?
    public var recipients: [JSONValue]
    public var sendAfter: Date

    public init(
        requestMeta: ScheduleChimeRequestRequestMeta? = nil,
        fullMessage: String? = nil,
        email: ChimeEmailMessageInput? = nil,
        messageTemplate: MessageTemplateReferenceInput? = nil,
        senderId: String? = nil,
        purpose: String? = nil,
        recipients: [JSONValue],
        sendAfter: Date
    ) {
        self.requestMeta = requestMeta
        self.fullMessage = fullMessage
        self.email = email
        self.messageTemplate = messageTemplate
        self.senderId = senderId
        self.purpose = purpose
        self.recipients = recipients
        self.sendAfter = sendAfter
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case fullMessage = "full_message"
        case email
        case messageTemplate = "message_template"
        case senderId = "sender_id"
        case purpose
        case recipients
        case sendAfter = "send_after"
    }
}

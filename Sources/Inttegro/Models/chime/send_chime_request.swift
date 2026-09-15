// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct SendChimeRequest: Codable, Sendable, Equatable {
    public var fullMessage: String?
    public var email: ChimeEmailMessageInput?
    public var messageTemplate: MessageTemplateReferenceInput?
    public var senderId: String?
    public var purpose: String?
    public var customData: CustomData?
    public var requestMeta: SendChimeRequestRequestMeta?
    public var recipient: SendChimeRequestRecipient

    public init(
        fullMessage: String? = nil,
        email: ChimeEmailMessageInput? = nil,
        messageTemplate: MessageTemplateReferenceInput? = nil,
        senderId: String? = nil,
        purpose: String? = nil,
        customData: CustomData? = nil,
        requestMeta: SendChimeRequestRequestMeta? = nil,
        recipient: SendChimeRequestRecipient
    ) {
        self.fullMessage = fullMessage
        self.email = email
        self.messageTemplate = messageTemplate
        self.senderId = senderId
        self.purpose = purpose
        self.customData = customData
        self.requestMeta = requestMeta
        self.recipient = recipient
    }

    private enum CodingKeys: String, CodingKey {
        case fullMessage = "full_message"
        case email
        case messageTemplate = "message_template"
        case senderId = "sender_id"
        case purpose
        case customData = "custom_data"
        case requestMeta = "request_meta"
        case recipient
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct BroadcastRequest: Codable, Sendable, Equatable {
    public var requestMeta: BroadcastRequestRequestMeta?
    public var messageTemplate: BroadcastRequestMessageTemplate?
    public var email: ChimeEmailMessageInput?
    public var purpose: String?
    public var sender: String?
    public var recipients: [JSONValue]

    public init(
        requestMeta: BroadcastRequestRequestMeta? = nil,
        messageTemplate: BroadcastRequestMessageTemplate? = nil,
        email: ChimeEmailMessageInput? = nil,
        purpose: String? = nil,
        sender: String? = nil,
        recipients: [JSONValue]
    ) {
        self.requestMeta = requestMeta
        self.messageTemplate = messageTemplate
        self.email = email
        self.purpose = purpose
        self.sender = sender
        self.recipients = recipients
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case messageTemplate = "message_template"
        case email
        case purpose
        case sender
        case recipients
    }
}

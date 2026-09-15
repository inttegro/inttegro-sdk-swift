// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct RenderedMessageTemplate: Codable, Sendable, Equatable {
    public var channel: MessageTemplateChannel
    public var attachments: [String]?
    public var sms: RenderedSMSMessageTemplate?
    public var email: RenderedEmailMessageTemplate?

    public init(
        channel: MessageTemplateChannel,
        attachments: [String]? = nil,
        sms: RenderedSMSMessageTemplate? = nil,
        email: RenderedEmailMessageTemplate? = nil
    ) {
        self.channel = channel
        self.attachments = attachments
        self.sms = sms
        self.email = email
    }
}

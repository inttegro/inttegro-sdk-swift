// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct RenderedEmailMessageTemplate: Codable, Sendable, Equatable {
    public var subject: String
    public var text: String
    public var html: String?
    public var from: MessageTemplateMailbox?
    public var replyTo: MessageTemplateMailbox?
    public var headers: MessageHeaders?
    public var safety: MessageTemplateSafetyResult?

    public init(
        subject: String,
        text: String,
        html: String? = nil,
        from: MessageTemplateMailbox? = nil,
        replyTo: MessageTemplateMailbox? = nil,
        headers: MessageHeaders? = nil,
        safety: MessageTemplateSafetyResult? = nil
    ) {
        self.subject = subject
        self.text = text
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.safety = safety
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case text
        case html
        case from
        case replyTo = "reply_to"
        case headers
        case safety
    }
}

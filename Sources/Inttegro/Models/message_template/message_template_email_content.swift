// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateEmailContent: Codable, Sendable, Equatable {
    public var subject: String
    public var html: String
    public var from: MessageTemplateMailbox?
    public var replyTo: MessageTemplateMailbox?
    public var headers: MessageHeaders?

    public init(
        subject: String,
        html: String,
        from: MessageTemplateMailbox? = nil,
        replyTo: MessageTemplateMailbox? = nil,
        headers: MessageHeaders? = nil
    ) {
        self.subject = subject
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case html
        case from
        case replyTo = "reply_to"
        case headers
    }
}

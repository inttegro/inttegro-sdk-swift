// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct MessageTemplateEmailContentInput: Codable, Sendable, Equatable {
    public var from: MessageTemplateMailboxInput?
    public var replyTo: MessageTemplateMailboxInput?
    public var headers: MessageHeaders?
    public var subject: String
    public var html: String

    public init(
        from: MessageTemplateMailboxInput? = nil,
        replyTo: MessageTemplateMailboxInput? = nil,
        headers: MessageHeaders? = nil,
        subject: String,
        html: String
    ) {
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.subject = subject
        self.html = html
    }

    private enum CodingKeys: String, CodingKey {
        case from
        case replyTo = "reply_to"
        case headers
        case subject
        case html
    }
}

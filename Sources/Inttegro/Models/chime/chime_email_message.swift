// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailMessage: Codable, Sendable, Equatable {
    public var subject: String?
    public var text: String?
    public var html: String?
    public var from: ChimeEmailMailbox?
    public var replyTo: ChimeEmailMailbox?
    public var headers: MessageHeaders?
    public var safety: ChimeEmailSafetyResult?
    public var schema: ChimeEmailSchemaMarkup?

    public init(
        subject: String? = nil,
        text: String? = nil,
        html: String? = nil,
        from: ChimeEmailMailbox? = nil,
        replyTo: ChimeEmailMailbox? = nil,
        headers: MessageHeaders? = nil,
        safety: ChimeEmailSafetyResult? = nil,
        schema: ChimeEmailSchemaMarkup? = nil
    ) {
        self.subject = subject
        self.text = text
        self.html = html
        self.from = from
        self.replyTo = replyTo
        self.headers = headers
        self.safety = safety
        self.schema = schema
    }

    private enum CodingKeys: String, CodingKey {
        case subject
        case text
        case html
        case from
        case replyTo = "reply_to"
        case headers
        case safety
        case schema
    }
}

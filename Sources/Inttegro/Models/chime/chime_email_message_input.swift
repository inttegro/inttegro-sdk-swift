// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ChimeEmailMessageInput: Codable, Sendable, Equatable {
    public var html: String?
    public var replyTo: String?
    public var headers: MessageHeaders?
    public var subject: String
    public var text: String
    public var from: ChimeEmailMailboxInput

    public init(
        html: String? = nil,
        replyTo: String? = nil,
        headers: MessageHeaders? = nil,
        subject: String,
        text: String,
        from: ChimeEmailMailboxInput
    ) {
        self.html = html
        self.replyTo = replyTo
        self.headers = headers
        self.subject = subject
        self.text = text
        self.from = from
    }

    private enum CodingKeys: String, CodingKey {
        case html
        case replyTo = "reply_to"
        case headers
        case subject
        case text
        case from
    }
}

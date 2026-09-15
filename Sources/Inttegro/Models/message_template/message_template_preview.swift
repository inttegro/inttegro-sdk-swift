// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplatePreview: Codable, Sendable, Equatable {
    public var messageTemplate: MessageTemplate
    public var rendered: RenderedMessageTemplate

    public init(
        messageTemplate: MessageTemplate,
        rendered: RenderedMessageTemplate
    ) {
        self.messageTemplate = messageTemplate
        self.rendered = rendered
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
        case rendered
    }
}

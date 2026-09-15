// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct RenderMessageTemplatePreviewRequest: Codable, Sendable, Equatable {
    public var messageTemplate: MessageTemplateReferenceInput

    public init(
        messageTemplate: MessageTemplateReferenceInput
    ) {
        self.messageTemplate = messageTemplate
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
    }
}

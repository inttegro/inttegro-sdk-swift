// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateSMSContent: Codable, Sendable, Equatable {
    public var messageTemplate: String

    public init(
        messageTemplate: String
    ) {
        self.messageTemplate = messageTemplate
    }

    private enum CodingKeys: String, CodingKey {
        case messageTemplate = "message_template"
    }
}

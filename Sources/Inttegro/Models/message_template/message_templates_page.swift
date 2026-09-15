// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplatesPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var messageTemplates: [MessageTemplate]

    public init(
        number: Int,
        size: Int,
        messageTemplates: [MessageTemplate]
    ) {
        self.number = number
        self.size = size
        self.messageTemplates = messageTemplates
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case messageTemplates = "message_templates"
    }
}

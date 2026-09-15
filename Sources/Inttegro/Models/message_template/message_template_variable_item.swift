// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateVariableItem: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var name: String
    public var required: Bool
    public var type: MessageTemplateVariableItemType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        name: String,
        required: Bool,
        type: MessageTemplateVariableItemType
    ) {
        self.about = about
        self.`default` = `default`
        self.name = name
        self.required = required
        self.type = type
    }
}

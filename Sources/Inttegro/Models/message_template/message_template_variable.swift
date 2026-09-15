// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateVariable: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var items: [MessageTemplateVariableItem]?
    public var name: String
    public var required: Bool
    public var type: MessageTemplateVariableType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        items: [MessageTemplateVariableItem]? = nil,
        name: String,
        required: Bool,
        type: MessageTemplateVariableType
    ) {
        self.about = about
        self.`default` = `default`
        self.items = items
        self.name = name
        self.required = required
        self.type = type
    }
}

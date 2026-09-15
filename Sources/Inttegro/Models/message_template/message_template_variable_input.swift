// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct MessageTemplateVariableInput: Codable, Sendable, Equatable {
    public var required: Bool?
    public var `default`: JSONValue?
    public var about: String?
    public var items: [MessageTemplateVariableItemInput]?
    public var name: String
    public var type: MessageTemplateVariableType

    public init(
        required: Bool? = nil,
        `default`: JSONValue? = nil,
        about: String? = nil,
        items: [MessageTemplateVariableItemInput]? = nil,
        name: String,
        type: MessageTemplateVariableType
    ) {
        self.required = required
        self.`default` = `default`
        self.about = about
        self.items = items
        self.name = name
        self.type = type
    }
}

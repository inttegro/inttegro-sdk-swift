// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct MessageTemplateVariableItemInput: Codable, Sendable, Equatable {
    public var about: String?
    public var `default`: JSONValue?
    public var required: Bool?
    public var name: String
    public var type: MessageTemplateVariableItemType

    public init(
        about: String? = nil,
        `default`: JSONValue? = nil,
        required: Bool? = nil,
        name: String,
        type: MessageTemplateVariableItemType
    ) {
        self.about = about
        self.`default` = `default`
        self.required = required
        self.name = name
        self.type = type
    }
}

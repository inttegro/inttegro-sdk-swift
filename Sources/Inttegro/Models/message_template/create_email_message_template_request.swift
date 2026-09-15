// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateEmailMessageTemplateRequest: Codable, Sendable, Equatable {
    public var about: String?
    public var attachments: [String]?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var channel: MessageTemplateChannel
    public var email: MessageTemplateEmailContentInput
    public var name: String
    public var purpose: String

    public init(
        about: String? = nil,
        attachments: [String]? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        channel: MessageTemplateChannel,
        email: MessageTemplateEmailContentInput,
        name: String,
        purpose: String
    ) {
        self.about = about
        self.attachments = attachments
        self.locale = locale
        self.variables = variables
        self.channel = channel
        self.email = email
        self.name = name
        self.purpose = purpose
    }
}

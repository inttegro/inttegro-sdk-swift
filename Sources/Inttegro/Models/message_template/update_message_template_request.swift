// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateMessageTemplateRequest: Codable, Sendable, Equatable {
    public var name: String?
    public var about: String?
    public var channel: MessageTemplateChannel?
    public var purpose: String?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var sms: MessageTemplateSMSContentInput?
    public var email: MessageTemplateEmailContentInput?
    public var attachments: [String]?
    public var id: String

    public init(
        name: String? = nil,
        about: String? = nil,
        channel: MessageTemplateChannel? = nil,
        purpose: String? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        sms: MessageTemplateSMSContentInput? = nil,
        email: MessageTemplateEmailContentInput? = nil,
        attachments: [String]? = nil,
        id: String
    ) {
        self.name = name
        self.about = about
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
        self.variables = variables
        self.sms = sms
        self.email = email
        self.attachments = attachments
        self.id = id
    }
}

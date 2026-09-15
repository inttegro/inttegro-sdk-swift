// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateSMSMessageTemplateRequest: Codable, Sendable, Equatable {
    public var about: String?
    public var locale: String?
    public var variables: [MessageTemplateVariableInput]?
    public var channel: MessageTemplateChannel
    public var name: String
    public var purpose: String
    public var sms: MessageTemplateSMSContentInput

    public init(
        about: String? = nil,
        locale: String? = nil,
        variables: [MessageTemplateVariableInput]? = nil,
        channel: MessageTemplateChannel,
        name: String,
        purpose: String,
        sms: MessageTemplateSMSContentInput
    ) {
        self.about = about
        self.locale = locale
        self.variables = variables
        self.channel = channel
        self.name = name
        self.purpose = purpose
        self.sms = sms
    }
}

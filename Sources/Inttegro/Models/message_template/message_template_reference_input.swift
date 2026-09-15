// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct MessageTemplateReferenceInput: Codable, Sendable, Equatable {
    public var variables: JSONData?
    public var templateId: String

    public init(
        variables: JSONData? = nil,
        templateId: String
    ) {
        self.variables = variables
        self.templateId = templateId
    }

    private enum CodingKeys: String, CodingKey {
        case variables
        case templateId = "template_id"
    }
}

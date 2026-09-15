// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum CreateMessageTemplateRequest: Codable, Sendable, Equatable {
    case createSmsMessageTemplateRequest(CreateSMSMessageTemplateRequest)
    case createEmailMessageTemplateRequest(CreateEmailMessageTemplateRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateSMSMessageTemplateRequest.self) { self = .createSmsMessageTemplateRequest(value); return }
        if let value = try? container.decode(CreateEmailMessageTemplateRequest.self) { self = .createEmailMessageTemplateRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .createSmsMessageTemplateRequest(let value): try container.encode(value)
        case .createEmailMessageTemplateRequest(let value): try container.encode(value)
        }
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum BroadcastRequestMessageTemplate: Codable, Sendable, Equatable {
    case string(String)
    case messageTemplateReferenceInput(MessageTemplateReferenceInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) { self = .string(value); return }
        if let value = try? container.decode(MessageTemplateReferenceInput.self) { self = .messageTemplateReferenceInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let value): try container.encode(value)
        case .messageTemplateReferenceInput(let value): try container.encode(value)
        }
    }
}

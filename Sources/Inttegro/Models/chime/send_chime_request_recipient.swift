// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum SendChimeRequestRecipient: Codable, Sendable, Equatable {
    case chimeInlineRecipientInputVariant1(ChimeInlineRecipientInputVariant1)
    case chimeInlineRecipientInputVariant2(ChimeInlineRecipientInputVariant2)
    case chimeSavedCustomerRecipientInput(ChimeSavedCustomerRecipientInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChimeInlineRecipientInputVariant1.self) { self = .chimeInlineRecipientInputVariant1(value); return }
        if let value = try? container.decode(ChimeInlineRecipientInputVariant2.self) { self = .chimeInlineRecipientInputVariant2(value); return }
        if let value = try? container.decode(ChimeSavedCustomerRecipientInput.self) { self = .chimeSavedCustomerRecipientInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .chimeInlineRecipientInputVariant1(let value): try container.encode(value)
        case .chimeInlineRecipientInputVariant2(let value): try container.encode(value)
        case .chimeSavedCustomerRecipientInput(let value): try container.encode(value)
        }
    }
}

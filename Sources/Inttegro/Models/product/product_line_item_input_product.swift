// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum ProductLineItemInputProduct: Codable, Sendable, Equatable {
    case inlineProductDetailsInput(InlineProductDetailsInput)
    case catalogProductWithPriceDataInput(CatalogProductWithPriceDataInput)
    case catalogProductWithPriceReferenceInput(CatalogProductWithPriceReferenceInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(InlineProductDetailsInput.self) { self = .inlineProductDetailsInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceDataInput.self) { self = .catalogProductWithPriceDataInput(value); return }
        if let value = try? container.decode(CatalogProductWithPriceReferenceInput.self) { self = .catalogProductWithPriceReferenceInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .inlineProductDetailsInput(let value): try container.encode(value)
        case .catalogProductWithPriceDataInput(let value): try container.encode(value)
        case .catalogProductWithPriceReferenceInput(let value): try container.encode(value)
        }
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum LineItemInput: Codable, Sendable, Equatable {
    case productLineItemInput(ProductLineItemInput)
    case feeLineItemInput(FeeLineItemInput)
    case shippingLineItemInput(ShippingLineItemInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ProductLineItemInput.self) { self = .productLineItemInput(value); return }
        if let value = try? container.decode(FeeLineItemInput.self) { self = .feeLineItemInput(value); return }
        if let value = try? container.decode(ShippingLineItemInput.self) { self = .shippingLineItemInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .productLineItemInput(let value): try container.encode(value)
        case .feeLineItemInput(let value): try container.encode(value)
        case .shippingLineItemInput(let value): try container.encode(value)
        }
    }
}

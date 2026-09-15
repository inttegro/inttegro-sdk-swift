// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum OrderLineItem: Codable, Sendable, Equatable {
    case orderProductLineItem(OrderProductLineItem)
    case orderFeeLineItem(OrderFeeLineItem)
    case orderShippingLineItem(OrderShippingLineItem)
    case orderDiscountLineItem(OrderDiscountLineItem)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(OrderProductLineItem.self) { self = .orderProductLineItem(value); return }
        if let value = try? container.decode(OrderFeeLineItem.self) { self = .orderFeeLineItem(value); return }
        if let value = try? container.decode(OrderShippingLineItem.self) { self = .orderShippingLineItem(value); return }
        if let value = try? container.decode(OrderDiscountLineItem.self) { self = .orderDiscountLineItem(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .orderProductLineItem(let value): try container.encode(value)
        case .orderFeeLineItem(let value): try container.encode(value)
        case .orderShippingLineItem(let value): try container.encode(value)
        case .orderDiscountLineItem(let value): try container.encode(value)
        }
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum CreateOrderRequest: Codable, Sendable, Equatable {
    case createOrderNewCustomerInput(CreateOrderNewCustomerInput)
    case createOrderExistingCustomerInput(CreateOrderExistingCustomerInput)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(CreateOrderNewCustomerInput.self) { self = .createOrderNewCustomerInput(value); return }
        if let value = try? container.decode(CreateOrderExistingCustomerInput.self) { self = .createOrderExistingCustomerInput(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .createOrderNewCustomerInput(let value): try container.encode(value)
        case .createOrderExistingCustomerInput(let value): try container.encode(value)
        }
    }
}

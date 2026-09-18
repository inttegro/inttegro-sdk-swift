// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Immutable order-line snapshot attached to a refund.
public enum RefundOrderLineItem: Codable, Sendable, Equatable {
    case product(id: String, quantity: Int, product: RefundOrderLineItemProduct)
    case fee(id: String, fee: RefundOrderLineItemAdjustment)
    case shipping(id: String, shipping: RefundOrderLineItemAdjustment)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        let id = try container.decode(String.self, forKey: .id)

        switch type {
        case "product":
            self = .product(
                id: id,
                quantity: try container.decode(Int.self, forKey: .quantity),
                product: try container.decode(RefundOrderLineItemProduct.self, forKey: .product)
            )
        case "fee":
            self = .fee(
                id: id,
                fee: try container.decode(RefundOrderLineItemAdjustment.self, forKey: .fee)
            )
        case "shipping":
            self = .shipping(
                id: id,
                shipping: try container.decode(RefundOrderLineItemAdjustment.self, forKey: .shipping)
            )
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unsupported refund order line item type: \(type)"
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .product(let id, let quantity, let product):
            try container.encode(id, forKey: .id)
            try container.encode("product", forKey: .type)
            try container.encode(quantity, forKey: .quantity)
            try container.encode(product, forKey: .product)
        case .fee(let id, let fee):
            try container.encode(id, forKey: .id)
            try container.encode("fee", forKey: .type)
            try container.encode(fee, forKey: .fee)
        case .shipping(let id, let shipping):
            try container.encode(id, forKey: .id)
            try container.encode("shipping", forKey: .type)
            try container.encode(shipping, forKey: .shipping)
        }
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case quantity
        case product
        case fee
        case shipping
    }
}

public struct RefundOrderLineItemProduct: Codable, Sendable, Equatable {
    public var id: String?
    public var name: String

    public init(id: String? = nil, name: String) {
        self.id = id
        self.name = name
    }
}

public struct RefundOrderLineItemAdjustment: Codable, Sendable, Equatable {
    public var label: String?
    public var description: String?

    public init(label: String? = nil, description: String? = nil) {
        self.label = label
        self.description = description
    }
}

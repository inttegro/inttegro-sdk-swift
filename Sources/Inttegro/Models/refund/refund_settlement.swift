// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Immutable settlement evidence captured when a refund is created.
public enum RefundSettlement: Codable, Sendable, Equatable {
    case offline
    case paymentMethod(RefundSettlementPaymentMethod)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "offline":
            guard !container.contains(.paymentMethod) else {
                throw DecodingError.dataCorruptedError(
                    forKey: .paymentMethod,
                    in: container,
                    debugDescription: "Offline settlements must not include a payment method"
                )
            }
            self = .offline
        case "payment_method":
            self = .paymentMethod(
                try container.decode(RefundSettlementPaymentMethod.self, forKey: .paymentMethod)
            )
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unsupported refund settlement type: \(type)"
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .offline:
            try container.encode("offline", forKey: .type)
        case .paymentMethod(let paymentMethod):
            try container.encode("payment_method", forKey: .type)
            try container.encode(paymentMethod, forKey: .paymentMethod)
        }
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case paymentMethod = "payment_method"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A safe snapshot of the original payment method used for the order.
public enum RefundSettlementPaymentMethod: Codable, Sendable, Equatable {
    case mobileMoney(id: String, mobileMoney: RefundSettlementMobileMoney)
    case bankAccount(id: String, bankAccount: RefundSettlementBankAccount)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        let id = try container.decode(String.self, forKey: .id)

        switch type {
        case "mobile_money":
            guard !container.contains(.bankAccount) else {
                throw DecodingError.dataCorruptedError(
                    forKey: .bankAccount,
                    in: container,
                    debugDescription: "Mobile-money snapshots must not include bank-account details"
                )
            }
            self = .mobileMoney(
                id: id,
                mobileMoney: try container.decode(RefundSettlementMobileMoney.self, forKey: .mobileMoney)
            )
        case "bank_account":
            guard !container.contains(.mobileMoney) else {
                throw DecodingError.dataCorruptedError(
                    forKey: .mobileMoney,
                    in: container,
                    debugDescription: "Bank-account snapshots must not include mobile-money details"
                )
            }
            self = .bankAccount(
                id: id,
                bankAccount: try container.decode(RefundSettlementBankAccount.self, forKey: .bankAccount)
            )
        default:
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unsupported refund settlement payment-method type: \(type)"
            )
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .mobileMoney(let id, let mobileMoney):
            try container.encode("mobile_money", forKey: .type)
            try container.encode(id, forKey: .id)
            try container.encode(mobileMoney, forKey: .mobileMoney)
        case .bankAccount(let id, let bankAccount):
            try container.encode("bank_account", forKey: .type)
            try container.encode(id, forKey: .id)
            try container.encode(bankAccount, forKey: .bankAccount)
        }
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case mobileMoney = "mobile_money"
        case bankAccount = "bank_account"
    }
}

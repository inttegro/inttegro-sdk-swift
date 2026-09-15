// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Safe bank-account details retained in refund history.
public enum RefundSettlementBankAccount: Codable, Sendable, Equatable {
    case ghanaBankAccount(RefundSettlementGhanaBankAccount)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)
        guard type == "ghana_bank_account" else {
            throw DecodingError.dataCorruptedError(
                forKey: .type,
                in: container,
                debugDescription: "Unsupported refund settlement bank-account type: \(type)"
            )
        }
        self = .ghanaBankAccount(
            try container.decode(RefundSettlementGhanaBankAccount.self, forKey: .ghanaBankAccount)
        )
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .ghanaBankAccount(let ghanaBankAccount):
            try container.encode("ghana_bank_account", forKey: .type)
            try container.encode(ghanaBankAccount, forKey: .ghanaBankAccount)
        }
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

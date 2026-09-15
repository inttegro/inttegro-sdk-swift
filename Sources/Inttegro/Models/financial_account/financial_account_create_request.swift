// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum FinancialAccountCreateRequest: Codable, Sendable, Equatable {
    case financialAccountWalletRequest(FinancialAccountWalletRequest)
    case financialAccountBankRequest(FinancialAccountBankRequest)
    case financialAccountDoshRequest(FinancialAccountDoshRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(FinancialAccountWalletRequest.self) { self = .financialAccountWalletRequest(value); return }
        if let value = try? container.decode(FinancialAccountBankRequest.self) { self = .financialAccountBankRequest(value); return }
        if let value = try? container.decode(FinancialAccountDoshRequest.self) { self = .financialAccountDoshRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .financialAccountWalletRequest(let value): try container.encode(value)
        case .financialAccountBankRequest(let value): try container.encode(value)
        case .financialAccountDoshRequest(let value): try container.encode(value)
        }
    }
}

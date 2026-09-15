// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestWalletMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        network: MobileMoneyNetwork
    ) {
        self.accountNumber = accountNumber
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case network
    }
}

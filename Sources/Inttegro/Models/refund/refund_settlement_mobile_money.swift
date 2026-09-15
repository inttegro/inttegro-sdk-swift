// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Safe mobile-money details retained in refund history.
public struct RefundSettlementMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var last4: String
    public var network: MobileMoneyNetwork

    public init(accountNumber: String, last4: String, network: MobileMoneyNetwork) {
        self.accountNumber = accountNumber
        self.last4 = last4
        self.network = network
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case last4
        case network
    }
}

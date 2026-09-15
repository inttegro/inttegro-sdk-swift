// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Masked Ghana bank-account details retained in refund history.
public struct RefundSettlementGhanaBankAccount: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var last4: String

    public init(accountNumber: String, last4: String) {
        self.accountNumber = accountNumber
        self.last4 = last4
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case last4
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotMobileMoney: Codable, Sendable, Equatable {
    public var network: MobileMoneyNetwork
    public var accountNumber: String
    public var last4: String

    public init(
        network: MobileMoneyNetwork,
        accountNumber: String,
        last4: String
    ) {
        self.network = network
        self.accountNumber = accountNumber
        self.last4 = last4
    }

    private enum CodingKeys: String, CodingKey {
        case network
        case accountNumber = "account_number"
        case last4
    }
}

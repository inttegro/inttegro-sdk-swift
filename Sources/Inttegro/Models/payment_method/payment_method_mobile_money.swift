// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodMobileMoney: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var last4: String
    public var network: MobileMoneyNetwork

    public init(
        accountNumber: String,
        last4: String,
        network: MobileMoneyNetwork
    ) {
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

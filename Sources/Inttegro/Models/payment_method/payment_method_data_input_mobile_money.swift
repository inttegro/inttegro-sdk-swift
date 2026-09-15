// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PaymentMethodDataInputMobileMoney: Codable, Sendable, Equatable {
    public var network: MobileMoneyNetwork
    public var accountNumber: String

    public init(
        network: MobileMoneyNetwork,
        accountNumber: String
    ) {
        self.network = network
        self.accountNumber = accountNumber
    }

    private enum CodingKeys: String, CodingKey {
        case network
        case accountNumber = "account_number"
    }
}

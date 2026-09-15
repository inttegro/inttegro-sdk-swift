// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentPayoutConfigurationDestination: Codable, Sendable, Equatable {
    public var financialAccountId: String

    public init(
        financialAccountId: String
    ) {
        self.financialAccountId = financialAccountId
    }

    private enum CodingKeys: String, CodingKey {
        case financialAccountId = "financial_account_id"
    }
}

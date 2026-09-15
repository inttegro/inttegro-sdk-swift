// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountDisableRequest: Codable, Sendable, Equatable {
    public var unsetAsPayoutDestination: Bool?
    public var accountId: String

    public init(
        unsetAsPayoutDestination: Bool? = nil,
        accountId: String
    ) {
        self.unsetAsPayoutDestination = unsetAsPayoutDestination
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case unsetAsPayoutDestination = "unset_as_payout_destination"
        case accountId = "account_id"
    }
}

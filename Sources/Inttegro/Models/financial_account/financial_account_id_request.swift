// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountIDRequest: Codable, Sendable, Equatable {
    public var accountId: String

    public init(
        accountId: String
    ) {
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case accountId = "account_id"
    }
}

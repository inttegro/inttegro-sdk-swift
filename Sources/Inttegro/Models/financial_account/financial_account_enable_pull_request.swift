// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountEnablePullRequest: Codable, Sendable, Equatable {
    public var ipAddress: String?
    public var userAgent: String?
    public var accountId: String

    public init(
        ipAddress: String? = nil,
        userAgent: String? = nil,
        accountId: String
    ) {
        self.ipAddress = ipAddress
        self.userAgent = userAgent
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case ipAddress = "ip_address"
        case userAgent = "user_agent"
        case accountId = "account_id"
    }
}

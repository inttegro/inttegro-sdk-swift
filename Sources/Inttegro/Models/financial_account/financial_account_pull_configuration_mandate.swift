// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountPullConfigurationMandate: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var id: String
    public var ipAddress: String
    public var userAgent: String

    public init(
        createdAt: Date,
        id: String,
        ipAddress: String,
        userAgent: String
    ) {
        self.createdAt = createdAt
        self.id = id
        self.ipAddress = ipAddress
        self.userAgent = userAgent
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
        case ipAddress = "ip_address"
        case userAgent = "user_agent"
    }
}

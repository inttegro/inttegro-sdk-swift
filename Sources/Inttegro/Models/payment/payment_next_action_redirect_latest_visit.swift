// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionRedirectLatestVisit: Codable, Sendable, Equatable {
    public var userAgent: String
    public var ipAddress: String
    public var at: Date

    public init(
        userAgent: String,
        ipAddress: String,
        at: Date
    ) {
        self.userAgent = userAgent
        self.ipAddress = ipAddress
        self.at = at
    }

    private enum CodingKeys: String, CodingKey {
        case userAgent = "user_agent"
        case ipAddress = "ip_address"
        case at
    }
}

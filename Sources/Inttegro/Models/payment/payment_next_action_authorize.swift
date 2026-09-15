// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionAuthorize: Codable, Sendable, Equatable {
    public var beneficiary: String
    public var scheme: String
    public var expiresAt: Date

    public init(
        beneficiary: String,
        scheme: String,
        expiresAt: Date
    ) {
        self.beneficiary = beneficiary
        self.scheme = scheme
        self.expiresAt = expiresAt
    }

    private enum CodingKeys: String, CodingKey {
        case beneficiary
        case scheme
        case expiresAt = "expires_at"
    }
}

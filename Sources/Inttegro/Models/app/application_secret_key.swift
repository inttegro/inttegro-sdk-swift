// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ApplicationSecretKey: Codable, Sendable, Equatable {
    public var id: String?
    public var tokenType: String?
    public var issuedAt: Date?
    public var token: String?

    public init(
        id: String? = nil,
        tokenType: String? = nil,
        issuedAt: Date? = nil,
        token: String? = nil
    ) {
        self.id = id
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case token
    }
}

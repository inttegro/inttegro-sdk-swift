// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct GeneratedSecretKey: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var tokenType: SecretKeyTokenType
    public var issuedAt: Date
    public var token: String

    public init(
        id: String,
        label: String? = nil,
        tokenType: SecretKeyTokenType,
        issuedAt: Date,
        token: String
    ) {
        self.id = id
        self.label = label
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case token
    }
}

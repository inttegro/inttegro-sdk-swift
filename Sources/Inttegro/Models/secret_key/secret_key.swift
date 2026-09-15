// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct SecretKey: Codable, Sendable, Equatable {
    public var id: String
    public var label: String?
    public var tokenType: SecretKeyTokenType
    public var issuedAt: Date
    public var updatedAt: Date?
    public var expiresAt: Date?
    public var status: SecretKeyStatus
    public var active: Bool
    public var revokedAt: Date?
    public var lastUsedAt: Date?
    public var usageCount: Int?

    public init(
        id: String,
        label: String? = nil,
        tokenType: SecretKeyTokenType,
        issuedAt: Date,
        updatedAt: Date? = nil,
        expiresAt: Date? = nil,
        status: SecretKeyStatus,
        active: Bool,
        revokedAt: Date? = nil,
        lastUsedAt: Date? = nil,
        usageCount: Int? = nil
    ) {
        self.id = id
        self.label = label
        self.tokenType = tokenType
        self.issuedAt = issuedAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.status = status
        self.active = active
        self.revokedAt = revokedAt
        self.lastUsedAt = lastUsedAt
        self.usageCount = usageCount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case tokenType = "token_type"
        case issuedAt = "issued_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case status
        case active
        case revokedAt = "revoked_at"
        case lastUsedAt = "last_used_at"
        case usageCount = "usage_count"
    }
}

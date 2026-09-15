// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct SecretKeyUsageRow: Codable, Sendable, Equatable {
    public var secretKeyId: String
    public var occurredAt: Date
    public var authResult: SecretKeyAuthResult

    public init(
        secretKeyId: String,
        occurredAt: Date,
        authResult: SecretKeyAuthResult
    ) {
        self.secretKeyId = secretKeyId
        self.occurredAt = occurredAt
        self.authResult = authResult
    }

    private enum CodingKeys: String, CodingKey {
        case secretKeyId = "secret_key_id"
        case occurredAt = "occurred_at"
        case authResult = "auth_result"
    }
}

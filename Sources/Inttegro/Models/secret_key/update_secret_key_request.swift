// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateSecretKeyRequest: Codable, Sendable, Equatable {
    public var label: String
    public var secretKeyId: String

    public init(
        label: String,
        secretKeyId: String
    ) {
        self.label = label
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case secretKeyId = "secret_key_id"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct DestroySecretKeyRequest: Codable, Sendable, Equatable {
    public var secretKeyId: String

    public init(
        secretKeyId: String
    ) {
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case secretKeyId = "secret_key_id"
    }
}

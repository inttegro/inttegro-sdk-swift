// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct SecretKeyUsageRequest: Codable, Sendable, Equatable {
    public var number: Int?
    public var page: Int?
    public var size: Int?
    public var secretKeyId: String

    public init(
        number: Int? = nil,
        page: Int? = nil,
        size: Int? = nil,
        secretKeyId: String
    ) {
        self.number = number
        self.page = page
        self.size = size
        self.secretKeyId = secretKeyId
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case page
        case size
        case secretKeyId = "secret_key_id"
    }
}

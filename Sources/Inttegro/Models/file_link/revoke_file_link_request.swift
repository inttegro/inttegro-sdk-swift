// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct RevokeFileLinkRequest: Codable, Sendable, Equatable {
    public var revokedBy: FileActorInput?
    public var id: String

    public init(
        revokedBy: FileActorInput? = nil,
        id: String
    ) {
        self.revokedBy = revokedBy
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case revokedBy = "revoked_by"
        case id
    }
}

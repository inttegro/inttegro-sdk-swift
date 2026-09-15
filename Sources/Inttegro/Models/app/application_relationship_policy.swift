// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ApplicationRelationshipPolicy: Codable, Sendable, Equatable {
    public var childStanding: String
    public var management: AppManagementRole
    public var credentials: AppCredentialOwner

    public init(
        childStanding: String,
        management: AppManagementRole,
        credentials: AppCredentialOwner
    ) {
        self.childStanding = childStanding
        self.management = management
        self.credentials = credentials
    }

    private enum CodingKeys: String, CodingKey {
        case childStanding = "child_standing"
        case management
        case credentials
    }
}

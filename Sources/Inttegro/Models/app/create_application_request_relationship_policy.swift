// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateApplicationRequestRelationshipPolicy: Codable, Sendable, Equatable {
    public var childStanding: String?
    public var management: AppManagementRole?
    public var credentials: AppCredentialOwner?

    public init(
        childStanding: String? = nil,
        management: AppManagementRole? = nil,
        credentials: AppCredentialOwner? = nil
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

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ApplicationRelationship: Codable, Sendable, Equatable {
    public var id: String
    public var kind: AppRelationshipKind
    public var parent: ApplicationRelationshipParent
    public var status: AppRelationshipStatus
    public var createdAt: Date

    public init(
        id: String,
        kind: AppRelationshipKind,
        parent: ApplicationRelationshipParent,
        status: AppRelationshipStatus,
        createdAt: Date
    ) {
        self.id = id
        self.kind = kind
        self.parent = parent
        self.status = status
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case kind
        case parent
        case status
        case createdAt = "created_at"
    }
}

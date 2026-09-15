// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ApplicationRelationship: Codable, Sendable, Equatable {
    public var id: String
    public var kind: AppRelationshipKind
    public var policyVersion: String
    public var status: AppRelationshipStatus
    public var actorAppId: String
    public var creatorAppId: String
    public var placementParentAppId: String
    public var subjectAppId: String
    public var childAppId: String
    public var childStanding: String
    public var relationshipPolicy: ApplicationRelationshipPolicy
    public var retainedCreatorAuthorityExists: Bool
    public var createdAt: Date

    public init(
        id: String,
        kind: AppRelationshipKind,
        policyVersion: String,
        status: AppRelationshipStatus,
        actorAppId: String,
        creatorAppId: String,
        placementParentAppId: String,
        subjectAppId: String,
        childAppId: String,
        childStanding: String,
        relationshipPolicy: ApplicationRelationshipPolicy,
        retainedCreatorAuthorityExists: Bool,
        createdAt: Date
    ) {
        self.id = id
        self.kind = kind
        self.policyVersion = policyVersion
        self.status = status
        self.actorAppId = actorAppId
        self.creatorAppId = creatorAppId
        self.placementParentAppId = placementParentAppId
        self.subjectAppId = subjectAppId
        self.childAppId = childAppId
        self.childStanding = childStanding
        self.relationshipPolicy = relationshipPolicy
        self.retainedCreatorAuthorityExists = retainedCreatorAuthorityExists
        self.createdAt = createdAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case kind
        case policyVersion = "policy_version"
        case status
        case actorAppId = "actor_app_id"
        case creatorAppId = "creator_app_id"
        case placementParentAppId = "placement_parent_app_id"
        case subjectAppId = "subject_app_id"
        case childAppId = "child_app_id"
        case childStanding = "child_standing"
        case relationshipPolicy = "relationship_policy"
        case retainedCreatorAuthorityExists = "retained_creator_authority_exists"
        case createdAt = "created_at"
    }
}

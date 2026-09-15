// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateApplicationRequest: Codable, Sendable, Equatable {
    public var alias: String?
    public var description: String?
    public var legalEntityType: String?
    public var placementParentApplicationId: String?
    public var relationshipPolicy: CreateApplicationRequestRelationshipPolicy?
    public var name: String

    public init(
        alias: String? = nil,
        description: String? = nil,
        legalEntityType: String? = nil,
        placementParentApplicationId: String? = nil,
        relationshipPolicy: CreateApplicationRequestRelationshipPolicy? = nil,
        name: String
    ) {
        self.alias = alias
        self.description = description
        self.legalEntityType = legalEntityType
        self.placementParentApplicationId = placementParentApplicationId
        self.relationshipPolicy = relationshipPolicy
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case alias
        case description
        case legalEntityType = "legal_entity_type"
        case placementParentApplicationId = "placement_parent_application_id"
        case relationshipPolicy = "relationship_policy"
        case name
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateApplicationRequest: Codable, Sendable, Equatable {
    public var name: String?
    public var alias: String?
    public var description: String?
    public var legalEntityType: String?

    public init(
        name: String? = nil,
        alias: String? = nil,
        description: String? = nil,
        legalEntityType: String? = nil
    ) {
        self.name = name
        self.alias = alias
        self.description = description
        self.legalEntityType = legalEntityType
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case alias
        case description
        case legalEntityType = "legal_entity_type"
    }
}

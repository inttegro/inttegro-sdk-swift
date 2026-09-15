// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Application: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var alias: String?
    public var description: String?
    public var createdAt: Date
    public var updatedAt: Date?
    public var archivedAt: Date?
    public var secretKey: ApplicationSecretKey?
    public var relationship: ApplicationRelationship?

    public init(
        id: String,
        name: String,
        alias: String? = nil,
        description: String? = nil,
        createdAt: Date,
        updatedAt: Date? = nil,
        archivedAt: Date? = nil,
        secretKey: ApplicationSecretKey? = nil,
        relationship: ApplicationRelationship? = nil
    ) {
        self.id = id
        self.name = name
        self.alias = alias
        self.description = description
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.archivedAt = archivedAt
        self.secretKey = secretKey
        self.relationship = relationship
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case alias
        case description
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case archivedAt = "archived_at"
        case secretKey = "secret_key"
        case relationship
    }
}

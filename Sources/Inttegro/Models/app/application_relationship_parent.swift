// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Public identity of the application that directly contains another application.
public struct ApplicationRelationshipParent: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var alias: String?

    public init(id: String, name: String, alias: String? = nil) {
        self.id = id
        self.name = name
        self.alias = alias
    }
}

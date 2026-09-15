// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileLinkActor: Codable, Sendable, Equatable {
    public var email: String?
    public var id: String?
    public var name: String?
    public var type: String

    public init(
        email: String? = nil,
        id: String? = nil,
        name: String? = nil,
        type: String
    ) {
        self.email = email
        self.id = id
        self.name = name
        self.type = type
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileActor: Codable, Sendable, Equatable {
    public var type: String
    public var id: String?
    public var name: String?
    public var email: String?

    public init(
        type: String,
        id: String? = nil,
        name: String? = nil,
        email: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
        self.email = email
    }
}

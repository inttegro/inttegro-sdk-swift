// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileResourceInput: Codable, Sendable, Equatable {
    public var type: String?
    public var id: String?
    public var name: String?

    public init(
        type: String? = nil,
        id: String? = nil,
        name: String? = nil
    ) {
        self.type = type
        self.id = id
        self.name = name
    }
}

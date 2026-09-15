// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductAttributeInput: Codable, Sendable, Equatable {
    public var name: String
    public var value: String

    public init(
        name: String,
        value: String
    ) {
        self.name = name
        self.value = value
    }
}

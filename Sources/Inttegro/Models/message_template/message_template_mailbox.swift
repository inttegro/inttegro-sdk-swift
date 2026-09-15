// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateMailbox: Codable, Sendable, Equatable {
    public var address: String
    public var name: String?

    public init(
        address: String,
        name: String? = nil
    ) {
        self.address = address
        self.name = name
    }
}

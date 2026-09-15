// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct MessageTemplateMailboxInput: Codable, Sendable, Equatable {
    public var name: String?
    public var address: String

    public init(
        name: String? = nil,
        address: String
    ) {
        self.name = name
        self.address = address
    }
}

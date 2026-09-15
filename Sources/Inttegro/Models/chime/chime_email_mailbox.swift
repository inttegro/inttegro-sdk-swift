// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailMailbox: Codable, Sendable, Equatable {
    public var name: String?
    public var address: String?

    public init(
        name: String? = nil,
        address: String? = nil
    ) {
        self.name = name
        self.address = address
    }
}

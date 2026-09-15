// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `AppRelationshipKind` value used by the Inttegro API.
public struct AppRelationshipKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let placement = Self(rawValue: "placement")
}

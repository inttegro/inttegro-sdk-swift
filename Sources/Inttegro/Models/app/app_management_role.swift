// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `AppManagementRole` value used by the Inttegro API.
public struct AppManagementRole: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let parent = Self(rawValue: "parent")
    public static let child = Self(rawValue: "child")
}

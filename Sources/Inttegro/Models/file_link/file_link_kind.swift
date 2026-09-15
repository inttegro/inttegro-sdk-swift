// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileLinkKind` value used by the Inttegro API.
public struct FileLinkKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let `public` = Self(rawValue: "public")
}

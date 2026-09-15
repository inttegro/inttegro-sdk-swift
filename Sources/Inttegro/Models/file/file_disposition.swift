// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileDisposition` value used by the Inttegro API.
public struct FileDisposition: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let attachment = Self(rawValue: "attachment")
    public static let inline = Self(rawValue: "inline")
}

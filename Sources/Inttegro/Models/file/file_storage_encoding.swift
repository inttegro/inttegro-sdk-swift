// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileStorageEncoding` value used by the Inttegro API.
public struct FileStorageEncoding: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let identity = Self(rawValue: "identity")
    public static let brotli = Self(rawValue: "br")
}

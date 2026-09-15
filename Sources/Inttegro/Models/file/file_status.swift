// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileStatus` value used by the Inttegro API.
public struct FileStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let uploading = Self(rawValue: "uploading")
    public static let processing = Self(rawValue: "processing")
    public static let available = Self(rawValue: "available")
    public static let failed = Self(rawValue: "failed")
    public static let deleted = Self(rawValue: "deleted")
}

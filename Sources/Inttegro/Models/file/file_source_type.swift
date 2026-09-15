// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileSourceType` value used by the Inttegro API.
public struct FileSourceType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let direct = Self(rawValue: "direct")
    public static let uploadRequest = Self(rawValue: "upload_request")
    public static let service = Self(rawValue: "service")
}

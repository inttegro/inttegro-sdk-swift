// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `UploadRequestStatus` value used by the Inttegro API.
public struct UploadRequestStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let uploading = Self(rawValue: "uploading")
    public static let fulfilled = Self(rawValue: "fulfilled")
    public static let expired = Self(rawValue: "expired")
    public static let canceled = Self(rawValue: "canceled")
    public static let failed = Self(rawValue: "failed")
}

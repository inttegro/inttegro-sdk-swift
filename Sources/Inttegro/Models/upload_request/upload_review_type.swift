// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `UploadReviewType` value used by the Inttegro API.
public struct UploadReviewType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let automatic = Self(rawValue: "automatic")
    public static let manual = Self(rawValue: "manual")
}

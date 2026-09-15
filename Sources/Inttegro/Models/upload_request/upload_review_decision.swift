// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `UploadReviewDecision` value used by the Inttegro API.
public struct UploadReviewDecision: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let approved = Self(rawValue: "approved")
    public static let rejected = Self(rawValue: "rejected")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `RefundStatus` value used by the Inttegro API.
public struct RefundStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let canceled = Self(rawValue: "canceled")
    public static let failed = Self(rawValue: "failed")
    public static let pending = Self(rawValue: "pending")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
}

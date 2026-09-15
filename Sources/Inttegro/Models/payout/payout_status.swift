// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PayoutStatus` value used by the Inttegro API.
public struct PayoutStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let initialized = Self(rawValue: "initialized")
    public static let scheduled = Self(rawValue: "scheduled")
    public static let processing = Self(rawValue: "processing")
    public static let executing = Self(rawValue: "executing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let invalid = Self(rawValue: "invalid")
    public static let canceled = Self(rawValue: "canceled")
}

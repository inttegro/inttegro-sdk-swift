// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileScanStatus` value used by the Inttegro API.
public struct FileScanStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let passed = Self(rawValue: "passed")
    public static let failed = Self(rawValue: "failed")
    public static let skipped = Self(rawValue: "skipped")
}

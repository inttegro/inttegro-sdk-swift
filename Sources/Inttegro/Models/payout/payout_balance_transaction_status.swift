// Generated typed Inttegro domain value. Do not edit manually.
import Foundation

/// Whether a payout contribution remains reserved, completed, or released.
public struct PayoutBalanceTransactionStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let reserved = Self(rawValue: "reserved")
    public static let completed = Self(rawValue: "completed")
    public static let released = Self(rawValue: "released")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `BalanceTransactionType` value used by the Inttegro API.
public struct BalanceTransactionType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let payment = Self(rawValue: "payment")
    public static let refund = Self(rawValue: "refund")
}

import Foundation

/// Identifies whether an allocation funds a payout or a refund.
public struct BalanceTransactionAllocationType: RawRepresentable, Codable, Hashable, Sendable {
	public let rawValue: String
	public init(rawValue: String) { self.rawValue = rawValue }
	public static let payout = Self(rawValue: "payout")
	public static let refund = Self(rawValue: "refund")
}

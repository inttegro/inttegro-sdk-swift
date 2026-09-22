import Foundation

/// Caller-visible allocation state; internal workflow states are collapsed.
public struct BalanceTransactionAllocationStatus: RawRepresentable, Codable, Hashable, Sendable {
	public let rawValue: String
	public init(rawValue: String) { self.rawValue = rawValue }
	public static let pending = Self(rawValue: "pending")
	public static let completed = Self(rawValue: "completed")
}

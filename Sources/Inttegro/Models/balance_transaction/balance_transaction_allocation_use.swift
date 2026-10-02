import Foundation

/// Public refund or payout reference and its amount from one balance transaction.
public struct BalanceTransactionAllocationUse: Codable, Sendable, Equatable {
	public var id: String
	public var amount: BalanceTransactionAmount

	public init(id: String, amount: BalanceTransactionAmount) {
		self.id = id
		self.amount = amount
	}
}

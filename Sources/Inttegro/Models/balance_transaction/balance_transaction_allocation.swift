import Foundation

/// Caller-safe allocation of part of a payment balance transaction.
/// Exactly one of `refund` and `payout` is present, matching `type`.
public struct BalanceTransactionAllocation: Codable, Sendable, Equatable {
	public var id: String
	public var type: BalanceTransactionAllocationType
	public var status: BalanceTransactionAllocationStatus
	public var refund: BalanceTransactionAllocationUse?
	public var payout: BalanceTransactionAllocationUse?
	public var createdAt: Date
	public var updatedAt: Date
	public var completedAt: Date?

	public init(
		id: String,
		type: BalanceTransactionAllocationType,
		status: BalanceTransactionAllocationStatus,
		refund: BalanceTransactionAllocationUse? = nil,
		payout: BalanceTransactionAllocationUse? = nil,
		createdAt: Date,
		updatedAt: Date,
		completedAt: Date? = nil
	) {
		self.id = id
		self.type = type
		self.status = status
		self.refund = refund
		self.payout = payout
		self.createdAt = createdAt
		self.updatedAt = updatedAt
		self.completedAt = completedAt
	}

	private enum CodingKeys: String, CodingKey {
		case id, type, status, refund, payout
		case createdAt = "created_at"
		case updatedAt = "updated_at"
		case completedAt = "completed_at"
	}
}

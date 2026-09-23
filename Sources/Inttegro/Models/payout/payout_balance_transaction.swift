// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A sparse view of one balance transaction's contribution to a payout.
public struct PayoutBalanceTransaction: Codable, Sendable, Equatable {
    /// The exact portion allocated to this payout.
    public var allocatedAmount: Amount
    /// The balance transaction's original amount before allocations.
    public var amount: Amount
    /// Unique balance transaction identifier.
    public var id: String

    public init(allocatedAmount: Amount, amount: Amount, id: String) {
        self.allocatedAmount = allocatedAmount
        self.amount = amount
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case allocatedAmount = "allocated_amount"
        case amount
        case id
    }
}

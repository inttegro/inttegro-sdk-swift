// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CurrencyBalanceSnapshot: Codable, Sendable, Equatable {
    public var available: BalanceValue
    public var includesTransactionsBefore: Date
    public var pending: BalanceValue
    public var refund: CurrencyBalanceSnapshotRefund
    public var reserved: CurrencyBalanceSnapshotReserved

    public init(
        available: BalanceValue,
        includesTransactionsBefore: Date,
        pending: BalanceValue,
        refund: CurrencyBalanceSnapshotRefund,
        reserved: CurrencyBalanceSnapshotReserved
    ) {
        self.available = available
        self.includesTransactionsBefore = includesTransactionsBefore
        self.pending = pending
        self.refund = refund
        self.reserved = reserved
    }

    private enum CodingKeys: String, CodingKey {
        case available
        case includesTransactionsBefore = "includes_transactions_before"
        case pending
        case refund
        case reserved
    }
}

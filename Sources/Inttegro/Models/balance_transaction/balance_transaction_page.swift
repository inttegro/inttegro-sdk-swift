// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct BalanceTransactionPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var transactions: [BalanceTransaction]?

    public init(
        number: Int,
        size: Int,
        transactions: [BalanceTransaction]? = nil
    ) {
        self.number = number
        self.size = size
        self.transactions = transactions
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct BalanceTransactionAmount: Codable, Sendable, Equatable {
    public var currency: String
    public var value: Int

    public init(
        currency: String,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

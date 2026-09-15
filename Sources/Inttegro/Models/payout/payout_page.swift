// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var payouts: [Payout]?

    public init(
        number: Int,
        size: Int,
        payouts: [Payout]? = nil
    ) {
        self.number = number
        self.size = size
        self.payouts = payouts
    }
}

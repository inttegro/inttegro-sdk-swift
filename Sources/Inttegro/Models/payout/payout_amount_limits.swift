// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Inclusive payout amount range.
public struct PayoutAmountLimits: Codable, Sendable, Equatable {
    public var min: Amount
    public var max: Amount

    public init(min: Amount, max: Amount) {
        self.min = min
        self.max = max
    }
}

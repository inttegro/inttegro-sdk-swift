// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Platform limits applied to payouts.
public struct PayoutSettingsLimits: Codable, Sendable, Equatable {
    public var amount: PayoutAmountLimits

    public init(amount: PayoutAmountLimits) {
        self.amount = amount
    }
}

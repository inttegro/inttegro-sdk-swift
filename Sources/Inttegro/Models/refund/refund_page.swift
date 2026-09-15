// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct RefundPage: Codable, Sendable, Equatable {
    public var number: Int
    public var refunds: [Refund]
    public var size: Int

    public init(
        number: Int,
        refunds: [Refund],
        size: Int
    ) {
        self.number = number
        self.refunds = refunds
        self.size = size
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct AmountParams: Codable, Sendable, Equatable {
    public var currency: Currency
    public var value: Int

    public init(
        currency: Currency,
        value: Int
    ) {
        self.currency = currency
        self.value = value
    }
}

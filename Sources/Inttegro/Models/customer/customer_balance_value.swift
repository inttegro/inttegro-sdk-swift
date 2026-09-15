// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CustomerBalanceValue: Codable, Sendable, Equatable {
    public var asOf: Date
    public var available: Amount

    public init(
        asOf: Date,
        available: Amount
    ) {
        self.asOf = asOf
        self.available = available
    }

    private enum CodingKeys: String, CodingKey {
        case asOf = "as_of"
        case available
    }
}

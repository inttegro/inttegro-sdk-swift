// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PricePage: Codable, Sendable, Equatable {
    public var number: Int?
    public var size: Int?
    public var prices: [CatalogPrice]?

    public init(
        number: Int? = nil,
        size: Int? = nil,
        prices: [CatalogPrice]? = nil
    ) {
        self.number = number
        self.size = size
        self.prices = prices
    }
}

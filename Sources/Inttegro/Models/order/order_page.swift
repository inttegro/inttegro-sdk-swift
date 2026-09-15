// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var orders: [Order]

    public init(
        number: Int,
        size: Int,
        orders: [Order]
    ) {
        self.number = number
        self.size = size
        self.orders = orders
    }
}

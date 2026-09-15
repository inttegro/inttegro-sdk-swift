// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var products: [Product]

    public init(
        number: Int,
        size: Int,
        products: [Product]
    ) {
        self.number = number
        self.size = size
        self.products = products
    }
}

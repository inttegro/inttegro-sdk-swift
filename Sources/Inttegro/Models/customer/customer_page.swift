// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CustomerPage: Codable, Sendable, Equatable {
    public var customers: [Customer]
    public var number: Int
    public var size: Int

    public init(
        customers: [Customer],
        number: Int,
        size: Int
    ) {
        self.customers = customers
        self.number = number
        self.size = size
    }
}

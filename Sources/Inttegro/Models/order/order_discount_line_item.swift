// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct OrderDiscountLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var discount: OrderDiscount

    public init(
        type: String,
        discount: OrderDiscount
    ) {
        self.type = type
        self.discount = discount
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderFeeLineItem: Codable, Sendable, Equatable {
    public var type: String
    public var fee: OrderFeeLineItemFee

    public init(
        type: String,
        fee: OrderFeeLineItemFee
    ) {
        self.type = type
        self.fee = fee
    }
}

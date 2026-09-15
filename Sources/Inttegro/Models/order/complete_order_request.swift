// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CompleteOrderRequest: Codable, Sendable, Equatable {
    public var paidOutOfBand: Bool?
    public var orderId: String

    public init(
        paidOutOfBand: Bool? = nil,
        orderId: String
    ) {
        self.paidOutOfBand = paidOutOfBand
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case paidOutOfBand = "paid_out_of_band"
        case orderId = "order_id"
    }
}

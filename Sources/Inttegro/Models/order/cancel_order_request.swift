// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CancelOrderRequest: Codable, Sendable, Equatable {
    public var reason: String?
    public var executeRefund: Bool?
    public var orderId: String

    public init(
        reason: String? = nil,
        executeRefund: Bool? = nil,
        orderId: String
    ) {
        self.reason = reason
        self.executeRefund = executeRefund
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case reason
        case executeRefund = "execute_refund"
        case orderId = "order_id"
    }
}

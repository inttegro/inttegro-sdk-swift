// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct OrderDocumentDeliveryRequest: Codable, Sendable, Equatable {
    public var orderId: String

    public init(
        orderId: String
    ) {
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}

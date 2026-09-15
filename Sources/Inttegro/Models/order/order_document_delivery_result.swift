// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryResult: Codable, Sendable, Equatable {
    public var delivery: OrderDocumentDelivery?
    public var error: Error?
    public var order: Order?

    public init(
        delivery: OrderDocumentDelivery? = nil,
        error: Error? = nil,
        order: Order? = nil
    ) {
        self.delivery = delivery
        self.error = error
        self.order = order
    }
}

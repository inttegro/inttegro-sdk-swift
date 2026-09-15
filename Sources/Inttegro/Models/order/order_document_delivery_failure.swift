// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryFailure: Codable, Sendable, Equatable {
    public var channel: DeliveryChannel?
    public var error: String?

    public init(
        channel: DeliveryChannel? = nil,
        error: String? = nil
    ) {
        self.channel = channel
        self.error = error
    }
}

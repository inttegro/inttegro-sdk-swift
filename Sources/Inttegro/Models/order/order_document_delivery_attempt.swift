// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryAttempt: Codable, Sendable, Equatable {
    public var channel: DeliveryChannel?
    public var chimeId: String?

    public init(
        channel: DeliveryChannel? = nil,
        chimeId: String? = nil
    ) {
        self.channel = channel
        self.chimeId = chimeId
    }

    private enum CodingKeys: String, CodingKey {
        case channel
        case chimeId = "chime_id"
    }
}

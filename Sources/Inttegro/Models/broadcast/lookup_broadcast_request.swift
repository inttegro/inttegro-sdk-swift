// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupBroadcastRequest: Codable, Sendable, Equatable {
    public var broadcastId: String

    public init(
        broadcastId: String
    ) {
        self.broadcastId = broadcastId
    }

    private enum CodingKeys: String, CodingKey {
        case broadcastId = "broadcast_id"
    }
}

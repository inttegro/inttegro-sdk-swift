// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct PaymentMethodVerificationDelivery: Codable, Sendable, Equatable {
    public var recipient: String?
    public var channel: String?
    public var senderId: String?

    public init(recipient: String? = nil, channel: String? = nil, senderId: String? = nil) {
        self.recipient = recipient
        self.channel = channel
        self.senderId = senderId
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case channel
        case senderId = "sender_id"
    }
}

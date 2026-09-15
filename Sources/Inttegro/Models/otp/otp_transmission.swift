// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OTPTransmission: Codable, Sendable, Equatable {
    public var recipient: String
    public var senderId: String
    public var sentAt: Date?
    public var sentVia: String?
    public var status: OTPTransmissionStatus?

    public init(
        recipient: String,
        senderId: String,
        sentAt: Date? = nil,
        sentVia: String? = nil,
        status: OTPTransmissionStatus? = nil
    ) {
        self.recipient = recipient
        self.senderId = senderId
        self.sentAt = sentAt
        self.sentVia = sentVia
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case senderId = "sender_id"
        case sentAt = "sent_at"
        case sentVia = "sent_via"
        case status
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionConfirmPaymentRequest: Codable, Sendable, Equatable {
    public var id: String
    public var recipient: String
    public var sentVia: PaymentConfirmationChannel
    public var tokenSize: Int
    public var senderId: String
    public var status: String?

    public init(
        id: String,
        recipient: String,
        sentVia: PaymentConfirmationChannel,
        tokenSize: Int,
        senderId: String,
        status: String? = nil
    ) {
        self.id = id
        self.recipient = recipient
        self.sentVia = sentVia
        self.tokenSize = tokenSize
        self.senderId = senderId
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case recipient
        case sentVia = "sent_via"
        case tokenSize = "token_size"
        case senderId = "sender_id"
        case status
    }
}

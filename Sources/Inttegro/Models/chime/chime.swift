// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Chime: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var customData: CustomData?
    public var customerId: String?
    public var email: ChimeEmailMessage?
    public var fullMessage: String
    public var id: String
    public var idempotencyKey: String?
    public var purpose: String?
    public var recipient: ChimeRecipient
    public var senderId: String
    public var transmission: ChimeTransmission?

    public init(
        createdAt: Date,
        customData: CustomData? = nil,
        customerId: String? = nil,
        email: ChimeEmailMessage? = nil,
        fullMessage: String,
        id: String,
        idempotencyKey: String? = nil,
        purpose: String? = nil,
        recipient: ChimeRecipient,
        senderId: String,
        transmission: ChimeTransmission? = nil
    ) {
        self.createdAt = createdAt
        self.customData = customData
        self.customerId = customerId
        self.email = email
        self.fullMessage = fullMessage
        self.id = id
        self.idempotencyKey = idempotencyKey
        self.purpose = purpose
        self.recipient = recipient
        self.senderId = senderId
        self.transmission = transmission
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case customData = "custom_data"
        case customerId = "customer_id"
        case email
        case fullMessage = "full_message"
        case id
        case idempotencyKey = "idempotency_key"
        case purpose
        case recipient
        case senderId = "sender_id"
        case transmission
    }
}

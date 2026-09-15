// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct InitiateOTPRequest: Codable, Sendable, Equatable {
    public var asyncDelivery: Bool?
    public var messageTemplate: String?
    public var purpose: String?
    public var sender: String?
    public var tokenAlphabet: String?
    public var tokenAlphabetType: OTPAlphabetType?
    public var validityDurationInMinutes: Int?
    public var recipient: String
    public var serviceName: String
    public var tokenSize: Int

    public init(
        asyncDelivery: Bool? = nil,
        messageTemplate: String? = nil,
        purpose: String? = nil,
        sender: String? = nil,
        tokenAlphabet: String? = nil,
        tokenAlphabetType: OTPAlphabetType? = nil,
        validityDurationInMinutes: Int? = nil,
        recipient: String,
        serviceName: String,
        tokenSize: Int
    ) {
        self.asyncDelivery = asyncDelivery
        self.messageTemplate = messageTemplate
        self.purpose = purpose
        self.sender = sender
        self.tokenAlphabet = tokenAlphabet
        self.tokenAlphabetType = tokenAlphabetType
        self.validityDurationInMinutes = validityDurationInMinutes
        self.recipient = recipient
        self.serviceName = serviceName
        self.tokenSize = tokenSize
    }

    private enum CodingKeys: String, CodingKey {
        case asyncDelivery = "async_delivery"
        case messageTemplate = "message_template"
        case purpose
        case sender
        case tokenAlphabet = "token_alphabet"
        case tokenAlphabetType = "token_alphabet_type"
        case validityDurationInMinutes = "validity_duration_in_minutes"
        case recipient
        case serviceName = "service_name"
        case tokenSize = "token_size"
    }
}

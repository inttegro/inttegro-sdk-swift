// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CustomerDataInput: Codable, Sendable, Equatable {
    public var reference: String?
    public var customData: CustomDataInput?
    public var name: String
    public var emailAddress: String
    public var phoneNumber: String

    public init(
        reference: String? = nil,
        customData: CustomDataInput? = nil,
        name: String,
        emailAddress: String,
        phoneNumber: String
    ) {
        self.reference = reference
        self.customData = customData
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case customData = "custom_data"
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
    }
}

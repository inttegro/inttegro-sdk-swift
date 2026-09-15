// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct BillingDetailsInput: Codable, Sendable, Equatable {
    public var address: AddressInput?
    public var name: String
    public var emailAddress: String
    public var phoneNumber: String

    public init(
        address: AddressInput? = nil,
        name: String,
        emailAddress: String,
        phoneNumber: String
    ) {
        self.address = address
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }

    private enum CodingKeys: String, CodingKey {
        case address
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
    }
}

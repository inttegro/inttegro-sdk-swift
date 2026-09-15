// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateCustomerRequest: Codable, Sendable, Equatable {
    public var billingAddress: CustomerAddressInput?
    public var customData: CustomDataInput?
    public var emailAddress: String?
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddressInput?
    public var title: String?
    public var name: String

    public init(
        billingAddress: CustomerAddressInput? = nil,
        customData: CustomDataInput? = nil,
        emailAddress: String? = nil,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddressInput? = nil,
        title: String? = nil,
        name: String
    ) {
        self.billingAddress = billingAddress
        self.customData = customData
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.title = title
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case billingAddress = "billing_address"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case title
        case name
    }
}

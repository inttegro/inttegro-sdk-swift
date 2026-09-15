// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateCustomerRequest: Codable, Sendable, Equatable {
    public var billingAddress: CustomerAddressInput?
    public var customData: CustomDataInput?
    public var emailAddress: String?
    public var name: String?
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddressInput?
    public var suffix: String?
    public var title: String?
    public var customerId: String

    public init(
        billingAddress: CustomerAddressInput? = nil,
        customData: CustomDataInput? = nil,
        emailAddress: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddressInput? = nil,
        suffix: String? = nil,
        title: String? = nil,
        customerId: String
    ) {
        self.billingAddress = billingAddress
        self.customData = customData
        self.emailAddress = emailAddress
        self.name = name
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.suffix = suffix
        self.title = title
        self.customerId = customerId
    }

    private enum CodingKeys: String, CodingKey {
        case billingAddress = "billing_address"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case name
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case suffix
        case title
        case customerId = "customer_id"
    }
}

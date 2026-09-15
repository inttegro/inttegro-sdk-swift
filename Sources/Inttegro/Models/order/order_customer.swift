// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderCustomer: Codable, Sendable, Equatable {
    public var id: String
    public var guest: Bool
    public var name: String
    public var emailAddress: String?
    public var phoneNumber: String?
    public var billingAddress: OrderAddress?
    public var shippingAddress: OrderAddress?

    public init(
        id: String,
        guest: Bool,
        name: String,
        emailAddress: String? = nil,
        phoneNumber: String? = nil,
        billingAddress: OrderAddress? = nil,
        shippingAddress: OrderAddress? = nil
    ) {
        self.id = id
        self.guest = guest
        self.name = name
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case guest
        case name
        case emailAddress = "email_address"
        case phoneNumber = "phone_number"
        case billingAddress = "billing_address"
        case shippingAddress = "shipping_address"
    }
}

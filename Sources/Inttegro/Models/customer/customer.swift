// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Customer: Codable, Sendable, Equatable {
    public var balance: CustomerBalance
    public var billingAddress: CustomerAddress?
    public var createdAt: Date
    public var customData: CustomData?
    public var emailAddress: String?
    public var guest: Bool
    public var id: String
    public var name: String
    public var phoneNumber: String?
    public var reference: String?
    public var shippingAddress: CustomerAddress?
    public var suffix: String?
    public var title: String?
    public var updatedAt: Date?

    public init(
        balance: CustomerBalance,
        billingAddress: CustomerAddress? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        emailAddress: String? = nil,
        guest: Bool,
        id: String,
        name: String,
        phoneNumber: String? = nil,
        reference: String? = nil,
        shippingAddress: CustomerAddress? = nil,
        suffix: String? = nil,
        title: String? = nil,
        updatedAt: Date? = nil
    ) {
        self.balance = balance
        self.billingAddress = billingAddress
        self.createdAt = createdAt
        self.customData = customData
        self.emailAddress = emailAddress
        self.guest = guest
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.reference = reference
        self.shippingAddress = shippingAddress
        self.suffix = suffix
        self.title = title
        self.updatedAt = updatedAt
    }

    private enum CodingKeys: String, CodingKey {
        case balance
        case billingAddress = "billing_address"
        case createdAt = "created_at"
        case customData = "custom_data"
        case emailAddress = "email_address"
        case guest
        case id
        case name
        case phoneNumber = "phone_number"
        case reference
        case shippingAddress = "shipping_address"
        case suffix
        case title
        case updatedAt = "updated_at"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequestOwnerAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phoneNumber: String?
    public var postCode: String?
    public var region: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        postCode: String? = nil,
        region: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phoneNumber = phoneNumber
        self.postCode = postCode
        self.region = region
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case country
        case line1
        case line2
        case name
        case phoneNumber = "phone_number"
        case postCode = "post_code"
        case region
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderAddress: Codable, Sendable, Equatable {
    public var name: String?
    public var phoneNumber: String?
    public var line1: String?
    public var line2: String?
    public var city: String?
    public var region: String?
    public var postCode: String?
    public var country: String

    public init(
        name: String? = nil,
        phoneNumber: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        city: String? = nil,
        region: String? = nil,
        postCode: String? = nil,
        country: String
    ) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.line1 = line1
        self.line2 = line2
        self.city = city
        self.region = region
        self.postCode = postCode
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case line1
        case line2
        case city
        case region
        case postCode = "post_code"
        case country
    }
}

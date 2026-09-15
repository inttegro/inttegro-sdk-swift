// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct AddressInput: Codable, Sendable, Equatable {
    public var line2: String?
    public var region: String?
    public var district: String?
    public var postCode: String?
    public var name: String
    public var phoneNumber: String
    public var line1: String
    public var town: String
    public var country: String

    public init(
        line2: String? = nil,
        region: String? = nil,
        district: String? = nil,
        postCode: String? = nil,
        name: String,
        phoneNumber: String,
        line1: String,
        town: String,
        country: String
    ) {
        self.line2 = line2
        self.region = region
        self.district = district
        self.postCode = postCode
        self.name = name
        self.phoneNumber = phoneNumber
        self.line1 = line1
        self.town = town
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case line2
        case region
        case district
        case postCode = "post_code"
        case name
        case phoneNumber = "phone_number"
        case line1
        case town
        case country
    }
}

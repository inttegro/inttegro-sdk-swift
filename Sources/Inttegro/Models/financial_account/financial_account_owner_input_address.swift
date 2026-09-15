// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerInputAddress: Codable, Sendable, Equatable {
    public var city: String?
    public var line1: String?
    public var line2: String?
    public var name: String?
    public var phone: String?
    public var postCode: String?
    public var region: String?
    public var country: String

    public init(
        city: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        postCode: String? = nil,
        region: String? = nil,
        country: String
    ) {
        self.city = city
        self.line1 = line1
        self.line2 = line2
        self.name = name
        self.phone = phone
        self.postCode = postCode
        self.region = region
        self.country = country
    }

    private enum CodingKeys: String, CodingKey {
        case city
        case line1 = "line_1"
        case line2 = "line_2"
        case name
        case phone
        case postCode = "post_code"
        case region
        case country
    }
}

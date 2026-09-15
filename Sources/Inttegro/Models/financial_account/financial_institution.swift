// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialInstitution: Codable, Sendable, Equatable {
    public var bank: FinancialInstitutionBank?
    public var country: String
    public var id: String
    public var mobileMoneyProvider: FinancialInstitutionMobileMoneyProvider?
    public var name: String
    public var type: String

    public init(
        bank: FinancialInstitutionBank? = nil,
        country: String,
        id: String,
        mobileMoneyProvider: FinancialInstitutionMobileMoneyProvider? = nil,
        name: String,
        type: String
    ) {
        self.bank = bank
        self.country = country
        self.id = id
        self.mobileMoneyProvider = mobileMoneyProvider
        self.name = name
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case bank
        case country
        case id
        case mobileMoneyProvider = "mobile_money_provider"
        case name
        case type
    }
}

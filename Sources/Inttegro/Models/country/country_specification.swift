// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CountrySpecification: Codable, Sendable, Equatable {
    public var countryCode: String
    public var countryName: String
    public var currencies: [String]
    public var paymentMethods: [String]
    public var payoutSchedules: [String]
    public var btAgingSpecs: [String]
    public var legalEntityTypes: [String]
    public var financialAccountTypes: [String]
    public var idDocumentTypes: [String]
    public var banks: CountryBankDirectory?

    public init(
        countryCode: String,
        countryName: String,
        currencies: [String],
        paymentMethods: [String],
        payoutSchedules: [String],
        btAgingSpecs: [String],
        legalEntityTypes: [String],
        financialAccountTypes: [String],
        idDocumentTypes: [String],
        banks: CountryBankDirectory? = nil
    ) {
        self.countryCode = countryCode
        self.countryName = countryName
        self.currencies = currencies
        self.paymentMethods = paymentMethods
        self.payoutSchedules = payoutSchedules
        self.btAgingSpecs = btAgingSpecs
        self.legalEntityTypes = legalEntityTypes
        self.financialAccountTypes = financialAccountTypes
        self.idDocumentTypes = idDocumentTypes
        self.banks = banks
    }

    private enum CodingKeys: String, CodingKey {
        case countryCode = "country_code"
        case countryName = "country_name"
        case currencies
        case paymentMethods = "payment_methods"
        case payoutSchedules = "payout_schedules"
        case btAgingSpecs = "bt_aging_specs"
        case legalEntityTypes = "legal_entity_types"
        case financialAccountTypes = "financial_account_types"
        case idDocumentTypes = "id_document_types"
        case banks
    }
}

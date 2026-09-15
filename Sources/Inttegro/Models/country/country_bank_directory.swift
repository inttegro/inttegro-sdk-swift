// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CountryBankDirectory: Codable, Sendable, Equatable {
    public var bankAccountType: String
    public var codeScheme: String
    public var items: [CountryBank]

    public init(
        bankAccountType: String,
        codeScheme: String,
        items: [CountryBank]
    ) {
        self.bankAccountType = bankAccountType
        self.codeScheme = codeScheme
        self.items = items
    }

    private enum CodingKeys: String, CodingKey {
        case bankAccountType = "bank_account_type"
        case codeScheme = "code_scheme"
        case items
    }
}

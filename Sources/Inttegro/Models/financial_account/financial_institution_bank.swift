// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialInstitutionBank: Codable, Sendable, Equatable {
    public var bankAccountType: String
    public var branch: FinancialInstitutionBankBranch?
    public var codeScheme: String
    public var sortCodePrefix: String?
    public var swiftCode: String?

    public init(
        bankAccountType: String,
        branch: FinancialInstitutionBankBranch? = nil,
        codeScheme: String,
        sortCodePrefix: String? = nil,
        swiftCode: String? = nil
    ) {
        self.bankAccountType = bankAccountType
        self.branch = branch
        self.codeScheme = codeScheme
        self.sortCodePrefix = sortCodePrefix
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case bankAccountType = "bank_account_type"
        case branch
        case codeScheme = "code_scheme"
        case sortCodePrefix = "sort_code_prefix"
        case swiftCode = "swift_code"
    }
}

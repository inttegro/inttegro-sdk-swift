// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountBankRequestBankAccountGhanaBankAccount: Codable, Sendable, Equatable {
    public var bankName: String?
    public var branch: String?
    public var sortCode: String?
    public var swiftCode: String?
    public var holder: FinancialAccountOwnerInput?
    public var number: String

    public init(
        bankName: String? = nil,
        branch: String? = nil,
        sortCode: String? = nil,
        swiftCode: String? = nil,
        holder: FinancialAccountOwnerInput? = nil,
        number: String
    ) {
        self.bankName = bankName
        self.branch = branch
        self.sortCode = sortCode
        self.swiftCode = swiftCode
        self.holder = holder
        self.number = number
    }

    private enum CodingKeys: String, CodingKey {
        case bankName = "bank_name"
        case branch
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
        case holder
        case number
    }
}

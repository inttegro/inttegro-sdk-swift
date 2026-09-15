// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodBankAccountGhanaBankAccount: Codable, Sendable, Equatable {
    public var branch: String?
    public var name: String?
    public var accountNumber: String
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        branch: String? = nil,
        name: String? = nil,
        accountNumber: String,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.branch = branch
        self.name = name
        self.accountNumber = accountNumber
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case branch
        case name
        case accountNumber = "account_number"
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

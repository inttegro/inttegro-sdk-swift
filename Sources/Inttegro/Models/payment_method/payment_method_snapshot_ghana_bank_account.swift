// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotGhanaBankAccount: Codable, Sendable, Equatable {
    public var accountNumber: String
    public var branch: String?
    public var name: String?
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        accountNumber: String,
        branch: String? = nil,
        name: String? = nil,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.accountNumber = accountNumber
        self.branch = branch
        self.name = name
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case accountNumber = "account_number"
        case branch
        case name
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct GhanaBankAccount: Codable, Sendable, Equatable {
    public var branch: String?
    public var holder: FinancialAccountOwner
    public var name: String?
    public var number: String
    public var sortCode: String?
    public var swiftCode: String?

    public init(
        branch: String? = nil,
        holder: FinancialAccountOwner,
        name: String? = nil,
        number: String,
        sortCode: String? = nil,
        swiftCode: String? = nil
    ) {
        self.branch = branch
        self.holder = holder
        self.name = name
        self.number = number
        self.sortCode = sortCode
        self.swiftCode = swiftCode
    }

    private enum CodingKeys: String, CodingKey {
        case branch
        case holder
        case name
        case number
        case sortCode = "sort_code"
        case swiftCode = "swift_code"
    }
}

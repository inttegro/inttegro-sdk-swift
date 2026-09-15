// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CountryBank: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var swiftCode: String?
    public var sortCodePrefix: String?
    public var branches: [CountryBankBranch]

    public init(
        id: String,
        name: String,
        swiftCode: String? = nil,
        sortCodePrefix: String? = nil,
        branches: [CountryBankBranch]
    ) {
        self.id = id
        self.name = name
        self.swiftCode = swiftCode
        self.sortCodePrefix = sortCodePrefix
        self.branches = branches
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case swiftCode = "swift_code"
        case sortCodePrefix = "sort_code_prefix"
        case branches
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct CountryBankBranch: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var sortCode: String

    public init(
        id: String,
        name: String,
        sortCode: String
    ) {
        self.id = id
        self.name = name
        self.sortCode = sortCode
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case sortCode = "sort_code"
    }
}

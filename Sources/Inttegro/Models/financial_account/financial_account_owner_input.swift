// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerInput: Codable, Sendable, Equatable {
    public var name: String
    public var address: FinancialAccountOwnerInputAddress

    public init(
        name: String,
        address: FinancialAccountOwnerInputAddress
    ) {
        self.name = name
        self.address = address
    }
}

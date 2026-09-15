// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountOwner: Codable, Sendable, Equatable {
    public var address: FinancialAccountAddress
    public var name: String

    public init(
        address: FinancialAccountAddress,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

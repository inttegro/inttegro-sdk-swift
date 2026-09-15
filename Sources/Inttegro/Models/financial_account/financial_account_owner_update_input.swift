// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountOwnerUpdateInput: Codable, Sendable, Equatable {
    public var name: String?
    public var address: FinancialAccountOwnerUpdateInputAddress?

    public init(
        name: String? = nil,
        address: FinancialAccountOwnerUpdateInputAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountPage: Codable, Sendable, Equatable {
    public var accounts: [FinancialAccount]
    public var number: Int
    public var size: Int

    public init(
        accounts: [FinancialAccount],
        number: Int,
        size: Int
    ) {
        self.accounts = accounts
        self.number = number
        self.size = size
    }
}

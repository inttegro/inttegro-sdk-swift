// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductPriceSummary: Codable, Sendable, Equatable {
    public var id: String
    public var active: Bool
    public var label: String?
    public var fixedAmount: Amount

    public init(
        id: String,
        active: Bool,
        label: String? = nil,
        fixedAmount: Amount
    ) {
        self.id = id
        self.active = active
        self.label = label
        self.fixedAmount = fixedAmount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case active
        case label
        case fixedAmount = "fixed_amount"
    }
}

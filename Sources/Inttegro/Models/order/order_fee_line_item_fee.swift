// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderFeeLineItemFee: Codable, Sendable, Equatable {
    public var id: String
    public var description: String?
    public var taxCode: String?
    public var amount: Amount
    public var label: String

    public init(
        id: String,
        description: String? = nil,
        taxCode: String? = nil,
        amount: Amount,
        label: String
    ) {
        self.id = id
        self.description = description
        self.taxCode = taxCode
        self.amount = amount
        self.label = label
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case description
        case taxCode = "tax_code"
        case amount
        case label
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderShippingLineItemShipping: Codable, Sendable, Equatable {
    public var id: String
    public var taxCode: String?
    public var label: String?
    public var fee: Amount

    public init(
        id: String,
        taxCode: String? = nil,
        label: String? = nil,
        fee: Amount
    ) {
        self.id = id
        self.taxCode = taxCode
        self.label = label
        self.fee = fee
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case taxCode = "tax_code"
        case label
        case fee
    }
}

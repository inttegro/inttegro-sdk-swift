// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderLineItemGroup: Codable, Sendable, Equatable {
    public var lineItems: [OrderLineItem]
    public var total: Amount

    public init(
        lineItems: [OrderLineItem],
        total: Amount
    ) {
        self.lineItems = lineItems
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case lineItems = "line_items"
        case total
    }
}

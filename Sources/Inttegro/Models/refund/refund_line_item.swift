// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct RefundLineItem: Codable, Sendable, Equatable {
    public var id: String
    @available(*, deprecated, message: "Use orderLineItem and its ID.")
    public var orderLineItemId: String
    public var orderLineItem: RefundOrderLineItem?
    public var originalAmountPaid: Amount
    public var reason: RefundReason?
    public var reasonDetails: String?
    public var refundAmount: Amount

    public init(
        id: String,
        orderLineItemId: String,
        orderLineItem: RefundOrderLineItem? = nil,
        originalAmountPaid: Amount,
        reason: RefundReason? = nil,
        reasonDetails: String? = nil,
        refundAmount: Amount
    ) {
        self.id = id
        self.orderLineItemId = orderLineItemId
        self.orderLineItem = orderLineItem
        self.originalAmountPaid = originalAmountPaid
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.refundAmount = refundAmount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case orderLineItemId = "order_line_item_id"
        case orderLineItem = "order_line_item"
        case originalAmountPaid = "original_amount_paid"
        case reason
        case reasonDetails = "reason_details"
        case refundAmount = "refund_amount"
    }
}

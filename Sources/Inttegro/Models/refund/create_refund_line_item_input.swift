// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateRefundLineItemInput: Codable, Sendable, Equatable {
    public var reason: RefundReason?
    public var reasonDetails: String?
    public var orderLineItemId: String
    public var refundAmount: AmountParams

    public init(
        reason: RefundReason? = nil,
        reasonDetails: String? = nil,
        orderLineItemId: String,
        refundAmount: AmountParams
    ) {
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.orderLineItemId = orderLineItemId
        self.refundAmount = refundAmount
    }

    private enum CodingKeys: String, CodingKey {
        case reason
        case reasonDetails = "reason_details"
        case orderLineItemId = "order_line_item_id"
        case refundAmount = "refund_amount"
    }
}

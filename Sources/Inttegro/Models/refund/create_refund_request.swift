// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateRefundRequest: Codable, Sendable, Equatable {
    public var customData: CustomData?
    public var reasonDetails: String?
    public var reference: String?
    public var requestMeta: RefundRequestMetaInput?
    public var lineItems: [CreateRefundLineItemInput]
    public var orderId: String
    public var reason: RefundReason

    public init(
        customData: CustomData? = nil,
        reasonDetails: String? = nil,
        reference: String? = nil,
        requestMeta: RefundRequestMetaInput? = nil,
        lineItems: [CreateRefundLineItemInput],
        orderId: String,
        reason: RefundReason
    ) {
        self.customData = customData
        self.reasonDetails = reasonDetails
        self.reference = reference
        self.requestMeta = requestMeta
        self.lineItems = lineItems
        self.orderId = orderId
        self.reason = reason
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case reasonDetails = "reason_details"
        case reference
        case requestMeta = "request_meta"
        case lineItems = "line_items"
        case orderId = "order_id"
        case reason
    }
}

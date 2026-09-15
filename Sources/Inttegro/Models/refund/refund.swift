// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Refund: Codable, Sendable, Equatable {
    public var canceledAt: Date?
    public var createdAt: Date
    public var customData: CustomData?
    public var failedAt: Date?
    public var id: String
    public var lineItems: [RefundLineItem]
    public var orderId: String
    public var processingAt: Date?
    public var reason: RefundReason
    public var reasonDetails: String?
    public var reference: String?
    public var settlement: RefundSettlement
    public var status: RefundStatus
    public var succeededAt: Date?
    public var total: Amount

    public init(
        canceledAt: Date? = nil,
        createdAt: Date,
        customData: CustomData? = nil,
        failedAt: Date? = nil,
        id: String,
        lineItems: [RefundLineItem],
        orderId: String,
        processingAt: Date? = nil,
        reason: RefundReason,
        reasonDetails: String? = nil,
        reference: String? = nil,
        settlement: RefundSettlement,
        status: RefundStatus,
        succeededAt: Date? = nil,
        total: Amount
    ) {
        self.canceledAt = canceledAt
        self.createdAt = createdAt
        self.customData = customData
        self.failedAt = failedAt
        self.id = id
        self.lineItems = lineItems
        self.orderId = orderId
        self.processingAt = processingAt
        self.reason = reason
        self.reasonDetails = reasonDetails
        self.reference = reference
        self.settlement = settlement
        self.status = status
        self.succeededAt = succeededAt
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case canceledAt = "canceled_at"
        case createdAt = "created_at"
        case customData = "custom_data"
        case failedAt = "failed_at"
        case id
        case lineItems = "line_items"
        case orderId = "order_id"
        case processingAt = "processing_at"
        case reason
        case reasonDetails = "reason_details"
        case reference
        case settlement
        case status
        case succeededAt = "succeeded_at"
        case total
    }
}

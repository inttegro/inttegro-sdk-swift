// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct BalanceTransaction: Codable, Sendable, Equatable {
    public var amount: BalanceTransactionAmount
    public var availableAt: Date?
    public var claimedAt: Date?
    public var createdAt: Date
    public var id: String
    public var orderId: String
    public var paidAt: Date?
    public var paymentId: String?
    public var payoutId: String?
    public var payoutConfiguration: PaymentPayoutConfiguration?
    public var refundId: String?
    public var type: BalanceTransactionType

    public init(
        amount: BalanceTransactionAmount,
        availableAt: Date? = nil,
        claimedAt: Date? = nil,
        createdAt: Date,
        id: String,
        orderId: String,
        paidAt: Date? = nil,
        paymentId: String? = nil,
        payoutId: String? = nil,
        payoutConfiguration: PaymentPayoutConfiguration? = nil,
        refundId: String? = nil,
        type: BalanceTransactionType
    ) {
        self.amount = amount
        self.availableAt = availableAt
        self.claimedAt = claimedAt
        self.createdAt = createdAt
        self.id = id
        self.orderId = orderId
        self.paidAt = paidAt
        self.paymentId = paymentId
        self.payoutId = payoutId
        self.payoutConfiguration = payoutConfiguration
        self.refundId = refundId
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case amount
        case availableAt = "available_at"
        case claimedAt = "claimed_at"
        case createdAt = "created_at"
        case id
        case orderId = "order_id"
        case paidAt = "paid_at"
        case paymentId = "payment_id"
        case payoutId = "payout_id"
        case payoutConfiguration = "payout_configuration"
        case refundId = "refund_id"
        case type
    }
}

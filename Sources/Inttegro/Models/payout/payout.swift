// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Payout: Codable, Sendable, Equatable {
    public var amount: Amount?
    public var balanceTransactions: [PayoutBalanceTransaction]?
    public var canceledAt: Date?
    public var customData: CustomData?
    public var destinationId: String
    public var error: PayoutError?
    public var executeAfter: Date
    public var executedBy: String?
    public var expectedAt: Date?
    public var failedAt: Date?
    public var id: String
    public var initiatedAt: Date
    public var initiatedBy: String?
    public var maxAmount: Amount
    public var reference: String?
    public var scheduleId: String?
    public var scheduledAt: Date?
    public var scheduledBy: String?
    public var sentAt: Date?
    public var sourceId: String?
    public var status: PayoutStatus
    public var succeededAt: Date?

    public init(
        amount: Amount? = nil,
        balanceTransactions: [PayoutBalanceTransaction]? = nil,
        canceledAt: Date? = nil,
        customData: CustomData? = nil,
        destinationId: String,
        error: PayoutError? = nil,
        executeAfter: Date,
        executedBy: String? = nil,
        expectedAt: Date? = nil,
        failedAt: Date? = nil,
        id: String,
        initiatedAt: Date,
        initiatedBy: String? = nil,
        maxAmount: Amount,
        reference: String? = nil,
        scheduleId: String? = nil,
        scheduledAt: Date? = nil,
        scheduledBy: String? = nil,
        sentAt: Date? = nil,
        sourceId: String? = nil,
        status: PayoutStatus,
        succeededAt: Date? = nil
    ) {
        self.amount = amount
        self.balanceTransactions = balanceTransactions
        self.canceledAt = canceledAt
        self.customData = customData
        self.destinationId = destinationId
        self.error = error
        self.executeAfter = executeAfter
        self.executedBy = executedBy
        self.expectedAt = expectedAt
        self.failedAt = failedAt
        self.id = id
        self.initiatedAt = initiatedAt
        self.initiatedBy = initiatedBy
        self.maxAmount = maxAmount
        self.reference = reference
        self.scheduleId = scheduleId
        self.scheduledAt = scheduledAt
        self.scheduledBy = scheduledBy
        self.sentAt = sentAt
        self.sourceId = sourceId
        self.status = status
        self.succeededAt = succeededAt
    }

    private enum CodingKeys: String, CodingKey {
        case amount
        case balanceTransactions = "balance_transactions"
        case canceledAt = "canceled_at"
        case customData = "custom_data"
        case destinationId = "destination_id"
        case error
        case executeAfter = "execute_after"
        case executedBy = "executed_by"
        case expectedAt = "expected_at"
        case failedAt = "failed_at"
        case id
        case initiatedAt = "initiated_at"
        case initiatedBy = "initiated_by"
        case maxAmount = "max_amount"
        case reference
        case scheduleId = "schedule_id"
        case scheduledAt = "scheduled_at"
        case scheduledBy = "scheduled_by"
        case sentAt = "sent_at"
        case sourceId = "source_id"
        case status
        case succeededAt = "succeeded_at"
    }
}

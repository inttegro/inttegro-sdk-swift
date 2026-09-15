// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Payment: Codable, Sendable, Equatable {
    public var id: String
    public var status: PaymentStatus
    public var statementDescriptor: String
    public var amount: Amount
    public var balanceTransaction: BalanceTransaction?
    public var paymentMethod: PaymentMethodSnapshot?
    public var billingDetails: PaymentBillingDetails?
    public var customer: OrderCustomer?
    public var latestAttempt: PaymentAttempt?
    public var nextAction: PaymentNextAction?
    public var latestError: PaymentError?
    public var initiatedAt: Date
    public var executedAt: Date?
    public var paidAt: Date?
    public var canceledAt: Date?
    public var dueAt: Date?
    public var expiredAt: Date?
    public var failedAt: Date?
    public var paidOffline: Bool?
    public var paymentMethodTypes: [String]?
    public var payoutConfiguration: PaymentPayoutConfiguration?

    public init(
        id: String,
        status: PaymentStatus,
        statementDescriptor: String,
        amount: Amount,
        balanceTransaction: BalanceTransaction? = nil,
        paymentMethod: PaymentMethodSnapshot? = nil,
        billingDetails: PaymentBillingDetails? = nil,
        customer: OrderCustomer? = nil,
        latestAttempt: PaymentAttempt? = nil,
        nextAction: PaymentNextAction? = nil,
        latestError: PaymentError? = nil,
        initiatedAt: Date,
        executedAt: Date? = nil,
        paidAt: Date? = nil,
        canceledAt: Date? = nil,
        dueAt: Date? = nil,
        expiredAt: Date? = nil,
        failedAt: Date? = nil,
        paidOffline: Bool? = nil,
        paymentMethodTypes: [String]? = nil,
        payoutConfiguration: PaymentPayoutConfiguration? = nil
    ) {
        self.id = id
        self.status = status
        self.statementDescriptor = statementDescriptor
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.paymentMethod = paymentMethod
        self.billingDetails = billingDetails
        self.customer = customer
        self.latestAttempt = latestAttempt
        self.nextAction = nextAction
        self.latestError = latestError
        self.initiatedAt = initiatedAt
        self.executedAt = executedAt
        self.paidAt = paidAt
        self.canceledAt = canceledAt
        self.dueAt = dueAt
        self.expiredAt = expiredAt
        self.failedAt = failedAt
        self.paidOffline = paidOffline
        self.paymentMethodTypes = paymentMethodTypes
        self.payoutConfiguration = payoutConfiguration
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case status
        case statementDescriptor = "statement_descriptor"
        case amount
        case balanceTransaction = "balance_transaction"
        case paymentMethod = "payment_method"
        case billingDetails = "billing_details"
        case customer
        case latestAttempt = "latest_attempt"
        case nextAction = "next_action"
        case latestError = "latest_error"
        case initiatedAt = "initiated_at"
        case executedAt = "executed_at"
        case paidAt = "paid_at"
        case canceledAt = "canceled_at"
        case dueAt = "due_at"
        case expiredAt = "expired_at"
        case failedAt = "failed_at"
        case paidOffline = "paid_offline"
        case paymentMethodTypes = "payment_method_types"
        case payoutConfiguration = "payout_configuration"
    }
}

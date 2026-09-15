// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Order: Codable, Sendable, Equatable {
    public var canceledAt: Date?
    public var checkoutSettings: OrderCheckoutSettings?
    public var completedAt: Date?
    public var createdFrom: OrderCreatedFrom?
    public var customData: CustomData?
    public var customer: OrderCustomer
    public var expiresAt: Date?
    public var id: String
    public var initiatedAt: Date
    public var invoice: OrderInvoice?
    public var number: String?
    public var receiptNumber: String?
    public var refunds: [Refund]?
    public var invoiceSettings: InvoiceSettings?
    public var status: OrderStatus
    public var sealedAt: Date?
    public var lineItemGroup: OrderLineItemGroup?
    public var payment: Payment?
    public var paidAt: Date?
    public var paymentDueAt: Date?
    public var reference: String?

    public init(
        canceledAt: Date? = nil,
        checkoutSettings: OrderCheckoutSettings? = nil,
        completedAt: Date? = nil,
        createdFrom: OrderCreatedFrom? = nil,
        customData: CustomData? = nil,
        customer: OrderCustomer,
        expiresAt: Date? = nil,
        id: String,
        initiatedAt: Date,
        invoice: OrderInvoice? = nil,
        number: String? = nil,
        receiptNumber: String? = nil,
        refunds: [Refund]? = nil,
        invoiceSettings: InvoiceSettings? = nil,
        status: OrderStatus,
        sealedAt: Date? = nil,
        lineItemGroup: OrderLineItemGroup? = nil,
        payment: Payment? = nil,
        paidAt: Date? = nil,
        paymentDueAt: Date? = nil,
        reference: String? = nil
    ) {
        self.canceledAt = canceledAt
        self.checkoutSettings = checkoutSettings
        self.completedAt = completedAt
        self.createdFrom = createdFrom
        self.customData = customData
        self.customer = customer
        self.expiresAt = expiresAt
        self.id = id
        self.initiatedAt = initiatedAt
        self.invoice = invoice
        self.number = number
        self.receiptNumber = receiptNumber
        self.refunds = refunds
        self.invoiceSettings = invoiceSettings
        self.status = status
        self.sealedAt = sealedAt
        self.lineItemGroup = lineItemGroup
        self.payment = payment
        self.paidAt = paidAt
        self.paymentDueAt = paymentDueAt
        self.reference = reference
    }

    private enum CodingKeys: String, CodingKey {
        case canceledAt = "canceled_at"
        case checkoutSettings = "checkout_settings"
        case completedAt = "completed_at"
        case createdFrom = "created_from"
        case customData = "custom_data"
        case customer
        case expiresAt = "expires_at"
        case id
        case initiatedAt = "initiated_at"
        case invoice
        case number
        case receiptNumber = "receipt_number"
        case refunds
        case invoiceSettings = "invoice_settings"
        case status
        case sealedAt = "sealed_at"
        case lineItemGroup = "line_item_group"
        case payment
        case paidAt = "paid_at"
        case paymentDueAt = "payment_due_at"
        case reference
    }
}

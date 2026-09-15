// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateOrderExistingCustomerInput: Codable, Sendable, Equatable {
    public var paymentMethodId: String?
    public var paymentMethodData: PaymentMethodDataInput?
    public var receiptNumber: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var executePayment: Bool?
    public var finalize: Bool?
    public var requestMeta: CreateOrderExistingCustomerInputRequestMeta?
    public var checkoutSettings: CreateOrderExistingCustomerInputCheckoutSettings?
    public var invoiceSettings: InvoiceSettingsInput?
    public var payoutSettings: OrderPayoutSettingsRequest?
    public var customData: CustomData?
    public var billingDetails: BillingDetailsInput?
    public var shipping: ShippingInput?
    public var customerId: String
    public var lineItems: [LineItemInput]

    public init(
        paymentMethodId: String? = nil,
        paymentMethodData: PaymentMethodDataInput? = nil,
        receiptNumber: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        executePayment: Bool? = nil,
        finalize: Bool? = nil,
        requestMeta: CreateOrderExistingCustomerInputRequestMeta? = nil,
        checkoutSettings: CreateOrderExistingCustomerInputCheckoutSettings? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        payoutSettings: OrderPayoutSettingsRequest? = nil,
        customData: CustomData? = nil,
        billingDetails: BillingDetailsInput? = nil,
        shipping: ShippingInput? = nil,
        customerId: String,
        lineItems: [LineItemInput]
    ) {
        self.paymentMethodId = paymentMethodId
        self.paymentMethodData = paymentMethodData
        self.receiptNumber = receiptNumber
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.executePayment = executePayment
        self.finalize = finalize
        self.requestMeta = requestMeta
        self.checkoutSettings = checkoutSettings
        self.invoiceSettings = invoiceSettings
        self.payoutSettings = payoutSettings
        self.customData = customData
        self.billingDetails = billingDetails
        self.shipping = shipping
        self.customerId = customerId
        self.lineItems = lineItems
    }

    private enum CodingKeys: String, CodingKey {
        case paymentMethodId = "payment_method_id"
        case paymentMethodData = "payment_method_data"
        case receiptNumber = "receipt_number"
        case statementDescriptor = "statement_descriptor"
        case statementDescriptorPrefix = "statement_descriptor_prefix"
        case executePayment = "execute_payment"
        case finalize
        case requestMeta = "request_meta"
        case checkoutSettings = "checkout_settings"
        case invoiceSettings = "invoice_settings"
        case payoutSettings = "payout_settings"
        case customData = "custom_data"
        case billingDetails = "billing_details"
        case shipping
        case customerId = "customer_id"
        case lineItems = "line_items"
    }
}

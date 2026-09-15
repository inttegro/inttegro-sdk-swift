// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateOrderNewCustomerInput: Codable, Sendable, Equatable {
    public var number: String?
    public var receiptNumber: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var executePayment: Bool?
    public var finalize: Bool?
    public var requestMeta: CreateOrderNewCustomerInputRequestMeta?
    public var checkoutSettings: CreateOrderNewCustomerInputCheckoutSettings?
    public var invoiceSettings: InvoiceSettingsInput?
    public var payoutSettings: OrderPayoutSettingsRequest?
    public var customData: CustomData?
    public var billingDetails: BillingDetailsInput?
    public var shipping: ShippingInput?
    public var paymentMethodData: PaymentMethodDataInput?
    public var customerData: CustomerDataInput
    public var lineItems: [LineItemInput]

    public init(
        number: String? = nil,
        receiptNumber: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        executePayment: Bool? = nil,
        finalize: Bool? = nil,
        requestMeta: CreateOrderNewCustomerInputRequestMeta? = nil,
        checkoutSettings: CreateOrderNewCustomerInputCheckoutSettings? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        payoutSettings: OrderPayoutSettingsRequest? = nil,
        customData: CustomData? = nil,
        billingDetails: BillingDetailsInput? = nil,
        shipping: ShippingInput? = nil,
        paymentMethodData: PaymentMethodDataInput? = nil,
        customerData: CustomerDataInput,
        lineItems: [LineItemInput]
    ) {
        self.number = number
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
        self.paymentMethodData = paymentMethodData
        self.customerData = customerData
        self.lineItems = lineItems
    }

    private enum CodingKeys: String, CodingKey {
        case number
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
        case paymentMethodData = "payment_method_data"
        case customerData = "customer_data"
        case lineItems = "line_items"
    }
}

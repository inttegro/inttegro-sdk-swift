// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdateOrderRequest: Codable, Sendable, Equatable {
    public var clearPaymentMethod: Bool?
    public var customData: CustomData?
    public var invoiceSettings: InvoiceSettingsInput?
    public var finalize: Bool?
    public var lineItems: [LineItemInput]?
    public var number: String?
    public var receiptNumber: String?
    public var paymentMethodData: UpdateOrderRequestPaymentMethodData?
    public var paymentMethodId: String?
    public var statementDescriptor: String?
    public var statementDescriptorPrefix: String?
    public var orderId: String

    public init(
        clearPaymentMethod: Bool? = nil,
        customData: CustomData? = nil,
        invoiceSettings: InvoiceSettingsInput? = nil,
        finalize: Bool? = nil,
        lineItems: [LineItemInput]? = nil,
        number: String? = nil,
        receiptNumber: String? = nil,
        paymentMethodData: UpdateOrderRequestPaymentMethodData? = nil,
        paymentMethodId: String? = nil,
        statementDescriptor: String? = nil,
        statementDescriptorPrefix: String? = nil,
        orderId: String
    ) {
        self.clearPaymentMethod = clearPaymentMethod
        self.customData = customData
        self.invoiceSettings = invoiceSettings
        self.finalize = finalize
        self.lineItems = lineItems
        self.number = number
        self.receiptNumber = receiptNumber
        self.paymentMethodData = paymentMethodData
        self.paymentMethodId = paymentMethodId
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.orderId = orderId
    }

    private enum CodingKeys: String, CodingKey {
        case clearPaymentMethod = "clear_payment_method"
        case customData = "custom_data"
        case invoiceSettings = "invoice_settings"
        case finalize
        case lineItems = "line_items"
        case number
        case receiptNumber = "receipt_number"
        case paymentMethodData = "payment_method_data"
        case paymentMethodId = "payment_method_id"
        case statementDescriptor = "statement_descriptor"
        case statementDescriptorPrefix = "statement_descriptor_prefix"
        case orderId = "order_id"
    }
}

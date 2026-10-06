// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Hosted document formats for a payment receipt.
public struct OrderReceiptFormat: Codable, Sendable, Equatable {
    public var web: OrderDocumentFormat
    public var pdf: OrderDocumentFormat

    public init(web: OrderDocumentFormat, pdf: OrderDocumentFormat) {
        self.web = web
        self.pdf = pdf
    }
}

/// Receipt issued for a paid order payment.
public struct OrderReceipt: Codable, Sendable, Equatable {
    public var format: OrderReceiptFormat
    public var number: String?
    public var deliverySummary: [String: JSONValue]?

    public init(
        format: OrderReceiptFormat,
        number: String? = nil,
        deliverySummary: [String: JSONValue]? = nil
    ) {
        self.format = format
        self.number = number
        self.deliverySummary = deliverySummary
    }

    private enum CodingKeys: String, CodingKey {
        case format
        case number
        case deliverySummary = "delivery_summary"
    }
}

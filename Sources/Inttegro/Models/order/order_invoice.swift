// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderInvoice: Codable, Sendable, Equatable {
    public var number: String?
    public var format: OrderInvoiceFormat

    public init(
        number: String? = nil,
        format: OrderInvoiceFormat
    ) {
        self.number = number
        self.format = format
    }
}

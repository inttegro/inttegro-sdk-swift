// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderInvoiceFormat: Codable, Sendable, Equatable {
    public var web: OrderDocumentFormat
    public var pdf: OrderDocumentFormat

    public init(
        web: OrderDocumentFormat,
        pdf: OrderDocumentFormat
    ) {
        self.web = web
        self.pdf = pdf
    }
}

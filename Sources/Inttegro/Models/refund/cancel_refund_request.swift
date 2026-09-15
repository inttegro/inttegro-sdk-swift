// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CancelRefundRequest: Codable, Sendable, Equatable {
    public var requestMeta: RefundRequestMetaInput?
    public var refundId: String

    public init(
        requestMeta: RefundRequestMetaInput? = nil,
        refundId: String
    ) {
        self.requestMeta = requestMeta
        self.refundId = refundId
    }

    private enum CodingKeys: String, CodingKey {
        case requestMeta = "request_meta"
        case refundId = "refund_id"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupRefundRequest: Codable, Sendable, Equatable {
    public var refundId: String

    public init(
        refundId: String
    ) {
        self.refundId = refundId
    }

    private enum CodingKeys: String, CodingKey {
        case refundId = "refund_id"
    }
}

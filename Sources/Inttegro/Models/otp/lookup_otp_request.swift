// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupOTPRequest: Codable, Sendable, Equatable {
    public var transactionId: String

    public init(
        transactionId: String
    ) {
        self.transactionId = transactionId
    }

    private enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
    }
}

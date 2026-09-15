// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct VerifyOTPRequest: Codable, Sendable, Equatable {
    public var transactionId: String
    public var recipient: String
    public var token: String

    public init(
        transactionId: String,
        recipient: String,
        token: String
    ) {
        self.transactionId = transactionId
        self.recipient = recipient
        self.token = token
    }

    private enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
        case recipient
        case token
    }
}

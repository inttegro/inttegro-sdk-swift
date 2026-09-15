// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct PaymentNextActionRequestConfirmation: Codable, Sendable, Equatable {
    public var lastRequest: PaymentNextActionConfirmPaymentRequest?
    public var after: Date?

    public init(lastRequest: PaymentNextActionConfirmPaymentRequest? = nil, after: Date? = nil) {
        self.lastRequest = lastRequest
        self.after = after
    }

    private enum CodingKeys: String, CodingKey {
        case lastRequest = "last_request"
        case after
    }
}

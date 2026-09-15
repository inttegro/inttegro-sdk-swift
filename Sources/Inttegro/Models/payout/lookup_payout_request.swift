// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupPayoutRequest: Codable, Sendable, Equatable {
    public var payoutId: String

    public init(
        payoutId: String
    ) {
        self.payoutId = payoutId
    }

    private enum CodingKeys: String, CodingKey {
        case payoutId = "payout_id"
    }
}

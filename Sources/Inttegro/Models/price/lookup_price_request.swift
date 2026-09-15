// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupPriceRequest: Codable, Sendable, Equatable {
    public var priceId: String

    public init(
        priceId: String
    ) {
        self.priceId = priceId
    }

    private enum CodingKeys: String, CodingKey {
        case priceId = "price_id"
    }
}

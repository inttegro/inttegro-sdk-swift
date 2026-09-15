// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePriceRequest: Codable, Sendable, Equatable {
    public var label: String?
    public var about: String?
    public var priceId: String

    public init(
        label: String? = nil,
        about: String? = nil,
        priceId: String
    ) {
        self.label = label
        self.about = about
        self.priceId = priceId
    }

    private enum CodingKeys: String, CodingKey {
        case label
        case about
        case priceId = "price_id"
    }
}

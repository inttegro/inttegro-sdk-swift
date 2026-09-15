// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestPrice: Codable, Sendable, Equatable {
    public var id: String?
    public var nominal: PriceParams?
    public var original: CreatePurchaseIntentRequestPriceOriginal?
    public var originalId: String?

    public init(
        id: String? = nil,
        nominal: PriceParams? = nil,
        original: CreatePurchaseIntentRequestPriceOriginal? = nil,
        originalId: String? = nil
    ) {
        self.id = id
        self.nominal = nominal
        self.original = original
        self.originalId = originalId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nominal
        case original
        case originalId = "original_id"
    }
}

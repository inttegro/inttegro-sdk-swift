// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestPriceOriginal: Codable, Sendable, Equatable {
    public var id: String?
    public var nominal: PriceParams?

    public init(
        id: String? = nil,
        nominal: PriceParams? = nil
    ) {
        self.id = id
        self.nominal = nominal
    }
}

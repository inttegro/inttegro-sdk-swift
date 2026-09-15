// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentPage: Codable, Sendable, Equatable {
    public var number: Int
    public var purchaseIntents: [PurchaseIntent]
    public var size: Int

    public init(
        number: Int,
        purchaseIntents: [PurchaseIntent],
        size: Int
    ) {
        self.number = number
        self.purchaseIntents = purchaseIntents
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case purchaseIntents = "purchase_intents"
        case size
    }
}

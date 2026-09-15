// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CancelPurchaseIntentRequest: Codable, Sendable, Equatable {
    public var id: String?
    public var purchaseIntentId: String?

    public init(
        id: String? = nil,
        purchaseIntentId: String? = nil
    ) {
        self.id = id
        self.purchaseIntentId = purchaseIntentId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purchaseIntentId = "purchase_intent_id"
    }
}

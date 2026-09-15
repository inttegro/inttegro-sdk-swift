// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePurchaseIntentRequest: Codable, Sendable, Equatable {
    public var expiresAt: Date?
    public var id: String?
    public var quantity: UpdatePurchaseIntentRequestQuantity?
    public var purchaseIntentId: String?
    public var reactivate: Bool?

    public init(
        expiresAt: Date? = nil,
        id: String? = nil,
        quantity: UpdatePurchaseIntentRequestQuantity? = nil,
        purchaseIntentId: String? = nil,
        reactivate: Bool? = nil
    ) {
        self.expiresAt = expiresAt
        self.id = id
        self.quantity = quantity
        self.purchaseIntentId = purchaseIntentId
        self.reactivate = reactivate
    }

    private enum CodingKeys: String, CodingKey {
        case expiresAt = "expires_at"
        case id
        case quantity
        case purchaseIntentId = "purchase_intent_id"
        case reactivate
    }
}

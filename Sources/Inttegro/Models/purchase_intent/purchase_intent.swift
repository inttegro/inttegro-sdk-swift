// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntent: Codable, Sendable, Equatable {
    public var allowVariants: Bool
    public var createdAt: Date
    public var expiresAt: Date?
    public var id: String
    public var inactiveAt: Date?
    public var merchant: PurchaseIntentMerchant?
    public var price: PurchaseIntentPrice?
    public var product: PurchaseIntentProduct?
    public var quantity: PurchaseIntentQuantity
    public var status: PurchaseIntentStatus
    public var updatedAt: Date?
    public var usage: PurchaseIntentUsage
    public var variantSet: PurchaseIntentVariantSet?

    public init(
        allowVariants: Bool,
        createdAt: Date,
        expiresAt: Date? = nil,
        id: String,
        inactiveAt: Date? = nil,
        merchant: PurchaseIntentMerchant? = nil,
        price: PurchaseIntentPrice? = nil,
        product: PurchaseIntentProduct? = nil,
        quantity: PurchaseIntentQuantity,
        status: PurchaseIntentStatus,
        updatedAt: Date? = nil,
        usage: PurchaseIntentUsage,
        variantSet: PurchaseIntentVariantSet? = nil
    ) {
        self.allowVariants = allowVariants
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.id = id
        self.inactiveAt = inactiveAt
        self.merchant = merchant
        self.price = price
        self.product = product
        self.quantity = quantity
        self.status = status
        self.updatedAt = updatedAt
        self.usage = usage
        self.variantSet = variantSet
    }

    private enum CodingKeys: String, CodingKey {
        case allowVariants = "allow_variants"
        case createdAt = "created_at"
        case expiresAt = "expires_at"
        case id
        case inactiveAt = "inactive_at"
        case merchant
        case price
        case product
        case quantity
        case status
        case updatedAt = "updated_at"
        case usage
        case variantSet = "variant_set"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentPrice: Codable, Sendable, Equatable {
    public var active: Bool
    public var id: String?
    public var label: String?
    public var nominal: Amount
    public var original: PurchaseIntentOriginalPrice?

    public init(
        active: Bool,
        id: String? = nil,
        label: String? = nil,
        nominal: Amount,
        original: PurchaseIntentOriginalPrice? = nil
    ) {
        self.active = active
        self.id = id
        self.label = label
        self.nominal = nominal
        self.original = original
    }
}

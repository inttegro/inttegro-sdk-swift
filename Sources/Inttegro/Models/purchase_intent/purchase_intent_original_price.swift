// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentOriginalPrice: Codable, Sendable, Equatable {
    public var active: Bool
    public var id: String?
    public var label: String?
    public var nominal: Amount

    public init(
        active: Bool,
        id: String? = nil,
        label: String? = nil,
        nominal: Amount
    ) {
        self.active = active
        self.id = id
        self.label = label
        self.nominal = nominal
    }
}

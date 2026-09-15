// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentVariantAxis: Codable, Sendable, Equatable {
    public var key: String
    public var label: String
    public var position: Int

    public init(
        key: String,
        label: String,
        position: Int
    ) {
        self.key = key
        self.label = label
        self.position = position
    }
}

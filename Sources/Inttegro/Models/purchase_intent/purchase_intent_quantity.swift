// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentQuantity: Codable, Sendable, Equatable {
    public var min: Int
    public var max: Int?

    public init(
        min: Int,
        max: Int? = nil
    ) {
        self.min = min
        self.max = max
    }
}

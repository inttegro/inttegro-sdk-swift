// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePurchaseIntentRequestQuantity: Codable, Sendable, Equatable {
    public var max: Int?
    public var min: Int

    public init(
        max: Int? = nil,
        min: Int
    ) {
        self.max = max
        self.min = min
    }
}

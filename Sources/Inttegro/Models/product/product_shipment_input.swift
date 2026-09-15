// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductShipmentInput: Codable, Sendable, Equatable {
    public var type: ProductShipmentInputType

    public init(
        type: ProductShipmentInputType
    ) {
        self.type = type
    }
}

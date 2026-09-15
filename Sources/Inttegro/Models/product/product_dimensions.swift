// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductDimensions: Codable, Sendable, Equatable {
    public var physical: ProductDimensionsPhysical?
    public var digital: ProductDimensionsDigital?
    public var custom: ProductDimensionsCustom?

    public init(
        physical: ProductDimensionsPhysical? = nil,
        digital: ProductDimensionsDigital? = nil,
        custom: ProductDimensionsCustom? = nil
    ) {
        self.physical = physical
        self.digital = digital
        self.custom = custom
    }
}

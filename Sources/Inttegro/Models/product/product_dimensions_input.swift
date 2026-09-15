// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductDimensionsInput: Codable, Sendable, Equatable {
    public var physical: ProductDimensionsInputPhysical?
    public var digital: ProductDimensionsInputDigital?
    public var custom: ProductDimensionsInputCustom?

    public init(
        physical: ProductDimensionsInputPhysical? = nil,
        digital: ProductDimensionsInputDigital? = nil,
        custom: ProductDimensionsInputCustom? = nil
    ) {
        self.physical = physical
        self.digital = digital
        self.custom = custom
    }
}

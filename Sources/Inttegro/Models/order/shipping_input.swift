// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ShippingInput: Codable, Sendable, Equatable {
    public var address: AddressInput

    public init(
        address: AddressInput
    ) {
        self.address = address
    }
}

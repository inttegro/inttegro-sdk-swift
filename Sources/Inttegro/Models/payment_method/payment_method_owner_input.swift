// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PaymentMethodOwnerInput: Codable, Sendable, Equatable {
    public var address: PaymentMethodOwnerInputAddress
    public var name: String

    public init(
        address: PaymentMethodOwnerInputAddress,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodOwner: Codable, Sendable, Equatable {
    public var address: PaymentMethodOwnerAddress?
    public var name: String

    public init(
        address: PaymentMethodOwnerAddress? = nil,
        name: String
    ) {
        self.address = address
        self.name = name
    }
}

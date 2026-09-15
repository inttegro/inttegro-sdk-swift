// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotOwner: Codable, Sendable, Equatable {
    public var name: String
    public var address: OrderAddress?

    public init(
        name: String,
        address: OrderAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

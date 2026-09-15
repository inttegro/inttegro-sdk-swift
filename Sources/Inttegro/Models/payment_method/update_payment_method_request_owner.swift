// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequestOwner: Codable, Sendable, Equatable {
    public var name: String?
    public var address: UpdatePaymentMethodRequestOwnerAddress?

    public init(
        name: String? = nil,
        address: UpdatePaymentMethodRequestOwnerAddress? = nil
    ) {
        self.name = name
        self.address = address
    }
}

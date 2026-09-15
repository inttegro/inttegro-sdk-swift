// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ChimeSavedCustomerRecipientInput: Codable, Sendable, Equatable {
    public var customerId: String
    public var transport: ChimeTransport

    public init(
        customerId: String,
        transport: ChimeTransport
    ) {
        self.customerId = customerId
        self.transport = transport
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
        case transport
    }
}

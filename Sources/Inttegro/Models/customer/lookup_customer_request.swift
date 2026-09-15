// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupCustomerRequest: Codable, Sendable, Equatable {
    public var customerId: String

    public init(
        customerId: String
    ) {
        self.customerId = customerId
    }

    private enum CodingKeys: String, CodingKey {
        case customerId = "customer_id"
    }
}

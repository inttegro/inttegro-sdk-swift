// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct SetPayoutDestinationsRequest: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations

    public init(
        destinations: PayoutDestinations
    ) {
        self.destinations = destinations
    }
}

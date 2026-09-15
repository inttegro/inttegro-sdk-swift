// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentPayoutConfiguration: Codable, Sendable, Equatable {
    public var enableFx: Bool
    public var destination: PaymentPayoutConfigurationDestination

    public init(
        enableFx: Bool,
        destination: PaymentPayoutConfigurationDestination
    ) {
        self.enableFx = enableFx
        self.destination = destination
    }

    private enum CodingKeys: String, CodingKey {
        case enableFx = "enable_fx"
        case destination
    }
}

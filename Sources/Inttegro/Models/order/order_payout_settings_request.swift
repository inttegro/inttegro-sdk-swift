// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct OrderPayoutSettingsRequest: Codable, Sendable, Equatable {
    public var destination: OrderPayoutSettingsRequestDestination?
    public var enableFx: Bool?

    public init(
        destination: OrderPayoutSettingsRequestDestination? = nil,
        enableFx: Bool? = nil
    ) {
        self.destination = destination
        self.enableFx = enableFx
    }

    private enum CodingKeys: String, CodingKey {
        case destination
        case enableFx = "enable_fx"
    }
}

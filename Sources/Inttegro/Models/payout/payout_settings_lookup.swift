// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsLookup: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations
    public var fxEnabled: Bool?
    public var schedule: PayoutSettingsLookupSchedule?

    public init(
        destinations: PayoutDestinations,
        fxEnabled: Bool? = nil,
        schedule: PayoutSettingsLookupSchedule? = nil
    ) {
        self.destinations = destinations
        self.fxEnabled = fxEnabled
        self.schedule = schedule
    }

    private enum CodingKeys: String, CodingKey {
        case destinations
        case fxEnabled = "fx_enabled"
        case schedule
    }
}

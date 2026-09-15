// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsMutation: Codable, Sendable, Equatable {
    public var destinations: PayoutDestinations?
    public var fxEnabled: Bool?
    public var id: String?
    public var schedule: PayoutSettingsMutationSchedule?

    public init(
        destinations: PayoutDestinations? = nil,
        fxEnabled: Bool? = nil,
        id: String? = nil,
        schedule: PayoutSettingsMutationSchedule? = nil
    ) {
        self.destinations = destinations
        self.fxEnabled = fxEnabled
        self.id = id
        self.schedule = schedule
    }

    private enum CodingKeys: String, CodingKey {
        case destinations
        case fxEnabled = "fx_enabled"
        case id
        case schedule
    }
}

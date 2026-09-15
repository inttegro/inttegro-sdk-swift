// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsLookupSchedule: Codable, Sendable, Equatable {
    public var agingSpec: PayoutSettingsLookupScheduleAgingSpec
    public var description: String
    public var interval: String
    public var name: String
    public var scheduleOn: String
    public var type: String

    public init(
        agingSpec: PayoutSettingsLookupScheduleAgingSpec,
        description: String,
        interval: String,
        name: String,
        scheduleOn: String,
        type: String
    ) {
        self.agingSpec = agingSpec
        self.description = description
        self.interval = interval
        self.name = name
        self.scheduleOn = scheduleOn
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case agingSpec = "aging_spec"
        case description
        case interval
        case name
        case scheduleOn = "schedule_on"
        case type
    }
}

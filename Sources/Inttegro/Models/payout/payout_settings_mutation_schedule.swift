// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsMutationSchedule: Codable, Sendable, Equatable {
    public var description: String
    public var id: String
    public var interval: String
    public var name: String
    public var scheduleOn: String
    public var spec: PayoutSettingsMutationScheduleSpec
    public var type: String

    public init(
        description: String,
        id: String,
        interval: String,
        name: String,
        scheduleOn: String,
        spec: PayoutSettingsMutationScheduleSpec,
        type: String
    ) {
        self.description = description
        self.id = id
        self.interval = interval
        self.name = name
        self.scheduleOn = scheduleOn
        self.spec = spec
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case id
        case interval
        case name
        case scheduleOn = "schedule_on"
        case spec
        case type
    }
}

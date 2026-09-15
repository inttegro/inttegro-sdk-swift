// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CancelScheduleRequest: Codable, Sendable, Equatable {
    public var scheduleId: String

    public init(
        scheduleId: String
    ) {
        self.scheduleId = scheduleId
    }

    private enum CodingKeys: String, CodingKey {
        case scheduleId = "schedule_id"
    }
}

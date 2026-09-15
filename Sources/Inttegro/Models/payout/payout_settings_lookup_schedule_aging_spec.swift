// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsLookupScheduleAgingSpec: Codable, Sendable, Equatable {
    public var abide: String
    public var label: String
    public var tPlus: String

    public init(
        abide: String,
        label: String,
        tPlus: String
    ) {
        self.abide = abide
        self.label = label
        self.tPlus = tPlus
    }

    private enum CodingKeys: String, CodingKey {
        case abide
        case label
        case tPlus = "t_plus"
    }
}

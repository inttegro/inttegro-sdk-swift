// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsMutationScheduleSpec: Codable, Sendable, Equatable {
    public var abide: String
    public var id: String
    public var label: String
    public var tPlus: String

    public init(
        abide: String,
        id: String,
        label: String,
        tPlus: String
    ) {
        self.abide = abide
        self.id = id
        self.label = label
        self.tPlus = tPlus
    }

    private enum CodingKeys: String, CodingKey {
        case abide
        case id
        case label
        case tPlus = "t_plus"
    }
}

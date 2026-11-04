// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PayoutSettingsMutationScheduleSpec: Codable, Sendable, Equatable {
    public var abide: String
    public var publicId: String
    public var label: String
    public var tPlus: String

    public init(
        abide: String,
        publicId: String,
        label: String,
        tPlus: String
    ) {
        self.abide = abide
        self.publicId = publicId
        self.label = label
        self.tPlus = tPlus
    }

    private enum CodingKeys: String, CodingKey {
        case abide
        case publicId = "public_id"
        case label
        case tPlus = "t_plus"
    }
}

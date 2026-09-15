// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct LookupChimeRequest: Codable, Sendable, Equatable {
    public var chimeId: String

    public init(
        chimeId: String
    ) {
        self.chimeId = chimeId
    }

    private enum CodingKeys: String, CodingKey {
        case chimeId = "chime_id"
    }
}

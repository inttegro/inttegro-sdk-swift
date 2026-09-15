// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CancelUploadRequestRequest: Codable, Sendable, Equatable {
    public var canceledBy: FileActorInput?
    public var id: String

    public init(
        canceledBy: FileActorInput? = nil,
        id: String
    ) {
        self.canceledBy = canceledBy
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case canceledBy = "canceled_by"
        case id
    }
}

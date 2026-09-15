// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct DeleteFileRequest: Codable, Sendable, Equatable {
    public var fileId: String

    public init(
        fileId: String
    ) {
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case fileId = "file_id"
    }
}

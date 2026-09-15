// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileLinkCreation: Codable, Sendable, Equatable {
    public var fileLink: FileLink
    public var url: String

    public init(
        fileLink: FileLink,
        url: String
    ) {
        self.fileLink = fileLink
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case fileLink = "file_link"
        case url
    }
}

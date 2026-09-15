// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileLinkPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var fileLinks: [FileLink]

    public init(
        number: Int,
        size: Int,
        fileLinks: [FileLink]
    ) {
        self.number = number
        self.size = size
        self.fileLinks = fileLinks
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case fileLinks = "file_links"
    }
}

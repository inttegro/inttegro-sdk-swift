// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UploadRequestConstraintsInput: Codable, Sendable, Equatable {
    public var minSize: Int?
    public var maxSize: Int?
    public var exactSize: Int?
    public var contentTypes: [String]?
    public var extensions: [String]?
    public var filename: String?

    public init(
        minSize: Int? = nil,
        maxSize: Int? = nil,
        exactSize: Int? = nil,
        contentTypes: [String]? = nil,
        extensions: [String]? = nil,
        filename: String? = nil
    ) {
        self.minSize = minSize
        self.maxSize = maxSize
        self.exactSize = exactSize
        self.contentTypes = contentTypes
        self.extensions = extensions
        self.filename = filename
    }

    private enum CodingKeys: String, CodingKey {
        case minSize = "min_size"
        case maxSize = "max_size"
        case exactSize = "exact_size"
        case contentTypes = "content_types"
        case extensions
        case filename
    }
}

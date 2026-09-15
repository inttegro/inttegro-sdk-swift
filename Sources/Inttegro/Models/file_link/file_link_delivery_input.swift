// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileLinkDeliveryInput: Codable, Sendable, Equatable {
    public var mode: FileLinkDeliveryMode?
    public var filename: String?
    public var contentType: String?
    public var disposition: String?

    public init(
        mode: FileLinkDeliveryMode? = nil,
        filename: String? = nil,
        contentType: String? = nil,
        disposition: String? = nil
    ) {
        self.mode = mode
        self.filename = filename
        self.contentType = contentType
        self.disposition = disposition
    }

    private enum CodingKeys: String, CodingKey {
        case mode
        case filename
        case contentType = "content_type"
        case disposition
    }
}

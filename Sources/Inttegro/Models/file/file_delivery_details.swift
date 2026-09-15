// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileDeliveryDetails: Codable, Sendable, Equatable {
    public var publicUrl: String?
    public var cacheControl: String?
    public var contentType: String?

    public init(
        publicUrl: String? = nil,
        cacheControl: String? = nil,
        contentType: String? = nil
    ) {
        self.publicUrl = publicUrl
        self.cacheControl = cacheControl
        self.contentType = contentType
    }

    private enum CodingKeys: String, CodingKey {
        case publicUrl = "public_url"
        case cacheControl = "cache_control"
        case contentType = "content_type"
    }
}

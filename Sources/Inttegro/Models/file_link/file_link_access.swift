// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileLinkAccess: Codable, Sendable, Equatable {
    public var maxAccesses: Int?
    public var accessCount: Int?
    public var lastAccessedAt: Date?
    public var allowDownload: Bool?
    public var allowedOrigins: [String]?

    public init(
        maxAccesses: Int? = nil,
        accessCount: Int? = nil,
        lastAccessedAt: Date? = nil,
        allowDownload: Bool? = nil,
        allowedOrigins: [String]? = nil
    ) {
        self.maxAccesses = maxAccesses
        self.accessCount = accessCount
        self.lastAccessedAt = lastAccessedAt
        self.allowDownload = allowDownload
        self.allowedOrigins = allowedOrigins
    }

    private enum CodingKeys: String, CodingKey {
        case maxAccesses = "max_accesses"
        case accessCount = "access_count"
        case lastAccessedAt = "last_accessed_at"
        case allowDownload = "allow_download"
        case allowedOrigins = "allowed_origins"
    }
}

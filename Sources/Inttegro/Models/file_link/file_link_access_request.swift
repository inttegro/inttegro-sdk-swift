// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileLinkAccessRequest: Codable, Sendable, Equatable {
    public var maxAccesses: Int?
    public var allowDownload: Bool?
    public var allowedOrigins: [String]?
    public var allowedIpRanges: [String]?

    public init(
        maxAccesses: Int? = nil,
        allowDownload: Bool? = nil,
        allowedOrigins: [String]? = nil,
        allowedIpRanges: [String]? = nil
    ) {
        self.maxAccesses = maxAccesses
        self.allowDownload = allowDownload
        self.allowedOrigins = allowedOrigins
        self.allowedIpRanges = allowedIpRanges
    }

    private enum CodingKeys: String, CodingKey {
        case maxAccesses = "max_accesses"
        case allowDownload = "allow_download"
        case allowedOrigins = "allowed_origins"
        case allowedIpRanges = "allowed_ip_ranges"
    }
}

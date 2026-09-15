// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailScannedLink: Codable, Sendable, Equatable {
    public var raw: String?
    public var scheme: String?
    public var host: String?
    public var status: ContentSafetyStatus?
    public var reason: String?

    public init(
        raw: String? = nil,
        scheme: String? = nil,
        host: String? = nil,
        status: ContentSafetyStatus? = nil,
        reason: String? = nil
    ) {
        self.raw = raw
        self.scheme = scheme
        self.host = host
        self.status = status
        self.reason = reason
    }
}

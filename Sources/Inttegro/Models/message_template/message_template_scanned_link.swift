// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateScannedLink: Codable, Sendable, Equatable {
    public var host: String?
    public var raw: String
    public var reason: String?
    public var scheme: String
    public var status: String

    public init(
        host: String? = nil,
        raw: String,
        reason: String? = nil,
        scheme: String,
        status: String
    ) {
        self.host = host
        self.raw = raw
        self.reason = reason
        self.scheme = scheme
        self.status = status
    }
}

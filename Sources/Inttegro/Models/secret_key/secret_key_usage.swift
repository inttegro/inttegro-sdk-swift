// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct SecretKeyUsage: Codable, Sendable, Equatable {
    public var key: SecretKey
    public var usage: SecretKeyUsagePage

    public init(
        key: SecretKey,
        usage: SecretKeyUsagePage
    ) {
        self.key = key
        self.usage = usage
    }
}

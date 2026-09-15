// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct GenerateSecretKeyRequest: Codable, Sendable, Equatable {
    public var label: String?

    public init(
        label: String? = nil
    ) {
        self.label = label
    }
}

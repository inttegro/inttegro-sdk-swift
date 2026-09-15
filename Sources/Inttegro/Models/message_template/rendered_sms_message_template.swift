// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct RenderedSMSMessageTemplate: Codable, Sendable, Equatable {
    public var fullMessage: String

    public init(
        fullMessage: String
    ) {
        self.fullMessage = fullMessage
    }

    private enum CodingKeys: String, CodingKey {
        case fullMessage = "full_message"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct BroadcastError: Codable, Sendable, Equatable {
    public var recipient: String?
    public var fixCode: String?
    public var type: String?

    public init(
        recipient: String? = nil,
        fixCode: String? = nil,
        type: String? = nil
    ) {
        self.recipient = recipient
        self.fixCode = fixCode
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case recipient
        case fixCode = "fix_code"
        case type
    }
}

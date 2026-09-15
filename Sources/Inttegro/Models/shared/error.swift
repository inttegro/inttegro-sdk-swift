// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct Error: Codable, Sendable, Equatable {
    public var message: String?
    public var fixCode: String?
    public var detail: String?
    public var cause: String?
    public var type: String
    public var code: String
    public var url: String

    public init(
        message: String? = nil,
        fixCode: String? = nil,
        detail: String? = nil,
        cause: String? = nil,
        type: String,
        code: String,
        url: String
    ) {
        self.message = message
        self.fixCode = fixCode
        self.detail = detail
        self.cause = cause
        self.type = type
        self.code = code
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case message
        case fixCode = "fix_code"
        case detail
        case cause
        case type
        case code
        case url
    }
}

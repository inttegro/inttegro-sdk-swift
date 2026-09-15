// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestLatestError: Codable, Sendable, Equatable {
    public var code: String?
    public var param: String?
    public var message: String?
    public var retryable: Bool?
    public var at: Date?

    public init(
        code: String? = nil,
        param: String? = nil,
        message: String? = nil,
        retryable: Bool? = nil,
        at: Date? = nil
    ) {
        self.code = code
        self.param = param
        self.message = message
        self.retryable = retryable
        self.at = at
    }
}

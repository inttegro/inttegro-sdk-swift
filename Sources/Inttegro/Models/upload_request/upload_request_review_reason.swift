// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequestReviewReason: Codable, Sendable, Equatable {
    public var code: String
    public var message: String
    public var param: String?

    public init(
        code: String,
        message: String,
        param: String? = nil
    ) {
        self.code = code
        self.message = message
        self.param = param
    }
}

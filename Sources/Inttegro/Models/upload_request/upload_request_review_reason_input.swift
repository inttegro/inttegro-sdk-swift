// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UploadRequestReviewReasonInput: Codable, Sendable, Equatable {
    public var param: String?
    public var code: String
    public var message: String

    public init(
        param: String? = nil,
        code: String,
        message: String
    ) {
        self.param = param
        self.code = code
        self.message = message
    }
}

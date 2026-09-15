// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UploadRequestAttemptsRequest: Codable, Sendable, Equatable {
    public var maxAttempts: Int?

    public init(
        maxAttempts: Int? = nil
    ) {
        self.maxAttempts = maxAttempts
    }

    private enum CodingKeys: String, CodingKey {
        case maxAttempts = "max_attempts"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public enum ReviewUploadRequestAttemptRequest: Codable, Sendable, Equatable {
    case reviewUploadRequestAttemptByIdRequest(ReviewUploadRequestAttemptByIDRequest)
    case reviewUploadRequestAttemptByOrdinalRequest(ReviewUploadRequestAttemptByOrdinalRequest)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ReviewUploadRequestAttemptByIDRequest.self) { self = .reviewUploadRequestAttemptByIdRequest(value); return }
        if let value = try? container.decode(ReviewUploadRequestAttemptByOrdinalRequest.self) { self = .reviewUploadRequestAttemptByOrdinalRequest(value); return }
        throw DecodingError.typeMismatch(Self.self, .init(codingPath: decoder.codingPath, debugDescription: "Unsupported value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .reviewUploadRequestAttemptByIdRequest(let value): try container.encode(value)
        case .reviewUploadRequestAttemptByOrdinalRequest(let value): try container.encode(value)
        }
    }
}

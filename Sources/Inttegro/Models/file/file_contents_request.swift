// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileContentsRequest: Codable, Sendable, Equatable {
    public var disposition: FileDisposition?
    public var delivery: FileDelivery?
    public var fileId: String

    public init(
        disposition: FileDisposition? = nil,
        delivery: FileDelivery? = nil,
        fileId: String
    ) {
        self.disposition = disposition
        self.delivery = delivery
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case disposition
        case delivery
        case fileId = "file_id"
    }
}

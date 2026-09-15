// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PublicFileStorage: Codable, Sendable, Equatable {
    public var encoding: FileStorageEncoding
    public var storedSize: Int

    public init(
        encoding: FileStorageEncoding,
        storedSize: Int
    ) {
        self.encoding = encoding
        self.storedSize = storedSize
    }

    private enum CodingKeys: String, CodingKey {
        case encoding
        case storedSize = "stored_size"
    }
}

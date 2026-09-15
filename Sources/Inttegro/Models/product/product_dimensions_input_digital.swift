// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductDimensionsInputDigital: Codable, Sendable, Equatable {
    public var bytes: Double?
    public var sizeUnit: String?
    public var size: Double?

    public init(
        bytes: Double? = nil,
        sizeUnit: String? = nil,
        size: Double? = nil
    ) {
        self.bytes = bytes
        self.sizeUnit = sizeUnit
        self.size = size
    }

    private enum CodingKeys: String, CodingKey {
        case bytes
        case sizeUnit = "size_unit"
        case size
    }
}

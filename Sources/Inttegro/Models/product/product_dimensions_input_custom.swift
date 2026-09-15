// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ProductDimensionsInputCustom: Codable, Sendable, Equatable {
    public var sizeUnit: String?
    public var size: Double?
    public var details: ProductDimensionDetails?

    public init(
        sizeUnit: String? = nil,
        size: Double? = nil,
        details: ProductDimensionDetails? = nil
    ) {
        self.sizeUnit = sizeUnit
        self.size = size
        self.details = details
    }

    private enum CodingKeys: String, CodingKey {
        case sizeUnit = "size_unit"
        case size
        case details
    }
}

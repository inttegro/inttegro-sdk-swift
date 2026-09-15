// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductDimensionsPhysical: Codable, Sendable, Equatable {
    public var weightUnit: String?
    public var weight: Double?
    public var size: Double?
    public var volumeUnit: String?
    public var volume: Double?
    public var length: Double?
    public var height: Double?
    public var width: Double?

    public init(
        weightUnit: String? = nil,
        weight: Double? = nil,
        size: Double? = nil,
        volumeUnit: String? = nil,
        volume: Double? = nil,
        length: Double? = nil,
        height: Double? = nil,
        width: Double? = nil
    ) {
        self.weightUnit = weightUnit
        self.weight = weight
        self.size = size
        self.volumeUnit = volumeUnit
        self.volume = volume
        self.length = length
        self.height = height
        self.width = width
    }

    private enum CodingKeys: String, CodingKey {
        case weightUnit = "weight_unit"
        case weight
        case size
        case volumeUnit = "volume_unit"
        case volume
        case length
        case height
        case width
    }
}

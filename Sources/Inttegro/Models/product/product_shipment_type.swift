// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ProductShipmentType` value used by the Inttegro API.
public struct ProductShipmentType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let delivery = Self(rawValue: "delivery")
    public static let download = Self(rawValue: "download")
    public static let render = Self(rawValue: "render")
    public static let service = Self(rawValue: "service")
    public static let stream = Self(rawValue: "stream")
}

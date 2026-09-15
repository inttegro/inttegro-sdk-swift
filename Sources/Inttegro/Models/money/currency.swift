// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `Currency` value used by the Inttegro API.
public struct Currency: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let ghs = Self(rawValue: "ghs")
    public static let usd = Self(rawValue: "usd")
    public static let gbp = Self(rawValue: "gbp")
    public static let eur = Self(rawValue: "eur")
    public static let cny = Self(rawValue: "cny")
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `MobileMoneyNetwork` value used by the Inttegro API.
public struct MobileMoneyNetwork: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let airtel = Self(rawValue: "airtel")
    public static let mtn = Self(rawValue: "mtn")
    public static let telecel = Self(rawValue: "telecel")
    public static let vodafone = Self(rawValue: "vodafone")
}

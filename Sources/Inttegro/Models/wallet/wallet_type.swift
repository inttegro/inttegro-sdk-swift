// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `WalletType` value used by the Inttegro API.
public struct WalletType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let mobileMoney = Self(rawValue: "mobile_money")
}

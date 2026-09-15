// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ChimeTransport` value used by the Inttegro API.
public struct ChimeTransport: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let sms = Self(rawValue: "sms")
    public static let email = Self(rawValue: "email")
}

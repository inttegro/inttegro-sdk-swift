// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ChimeRecipientType` value used by the Inttegro API.
public struct ChimeRecipientType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let phone = Self(rawValue: "phone")
    public static let email = Self(rawValue: "email")
}

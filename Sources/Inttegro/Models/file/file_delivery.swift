// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileDelivery` value used by the Inttegro API.
public struct FileDelivery: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let stream = Self(rawValue: "stream")
    public static let redirect = Self(rawValue: "redirect")
}

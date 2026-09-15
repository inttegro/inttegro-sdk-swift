// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `FileLinkDeliveryMode` value used by the Inttegro API.
public struct FileLinkDeliveryMode: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let redirect = Self(rawValue: "redirect")
    public static let download = Self(rawValue: "download")
    public static let inline = Self(rawValue: "inline")
}

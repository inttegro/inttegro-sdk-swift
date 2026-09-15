// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `MessageTemplateStatus` value used by the Inttegro API.
public struct MessageTemplateStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let draft = Self(rawValue: "draft")
    public static let published = Self(rawValue: "published")
    public static let archived = Self(rawValue: "archived")
}

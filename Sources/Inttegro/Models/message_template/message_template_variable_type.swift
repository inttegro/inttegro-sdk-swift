// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `MessageTemplateVariableType` value used by the Inttegro API.
public struct MessageTemplateVariableType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let string = Self(rawValue: "string")
    public static let number = Self(rawValue: "number")
    public static let integer = Self(rawValue: "integer")
    public static let boolean = Self(rawValue: "boolean")
    public static let url = Self(rawValue: "url")
    public static let email = Self(rawValue: "email")
    public static let phone = Self(rawValue: "phone")
    public static let date = Self(rawValue: "date")
    public static let datetime = Self(rawValue: "datetime")
    public static let array = Self(rawValue: "array")
}

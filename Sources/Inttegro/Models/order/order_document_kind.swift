// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `OrderDocumentKind` value used by the Inttegro API.
public struct OrderDocumentKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let invoice = Self(rawValue: "invoice")
    public static let receipt = Self(rawValue: "receipt")
}

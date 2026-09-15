// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `ChimeEmailSchemaKind` value used by the Inttegro API.
public struct ChimeEmailSchemaKind: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let gmailViewAction = Self(rawValue: "gmail_view_action")
    public static let schemaOrgOrder = Self(rawValue: "schema_org_order")
    public static let schemaOrgInvoice = Self(rawValue: "schema_org_invoice")
}

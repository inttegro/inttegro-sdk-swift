// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailSchemaMarkup: Codable, Sendable, Equatable {
    public var kind: ChimeEmailSchemaKind?
    public var jsonLd: JSONData?

    public init(
        kind: ChimeEmailSchemaKind? = nil,
        jsonLd: JSONData? = nil
    ) {
        self.kind = kind
        self.jsonLd = jsonLd
    }

    private enum CodingKeys: String, CodingKey {
        case kind
        case jsonLd = "json_ld"
    }
}

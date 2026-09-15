// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileReferenceInput: Codable, Sendable, Equatable {
    public var reference: String?
    public var referenceKind: String?
    public var purpose: String?
    public var fileId: String
    public var field: String

    public init(
        reference: String? = nil,
        referenceKind: String? = nil,
        purpose: String? = nil,
        fileId: String,
        field: String
    ) {
        self.reference = reference
        self.referenceKind = referenceKind
        self.purpose = purpose
        self.fileId = fileId
        self.field = field
    }

    private enum CodingKeys: String, CodingKey {
        case reference
        case referenceKind = "reference_kind"
        case purpose
        case fileId = "file_id"
        case field
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FileReferenceReconcileRequest: Codable, Sendable, Equatable {
    public var references: [FileReferenceInput]?
    public var resourceType: String
    public var resourceId: String

    public init(
        references: [FileReferenceInput]? = nil,
        resourceType: String,
        resourceId: String
    ) {
        self.references = references
        self.resourceType = resourceType
        self.resourceId = resourceId
    }

    private enum CodingKeys: String, CodingKey {
        case references
        case resourceType = "resource_type"
        case resourceId = "resource_id"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderCreatedFrom: Codable, Sendable, Equatable {
    public var source: String?
    public var resourceType: OrderCreatedFromResourceType?
    public var resourceId: String?

    public init(
        source: String? = nil,
        resourceType: OrderCreatedFromResourceType? = nil,
        resourceId: String? = nil
    ) {
        self.source = source
        self.resourceType = resourceType
        self.resourceId = resourceId
    }

    private enum CodingKeys: String, CodingKey {
        case source
        case resourceType = "resource_type"
        case resourceId = "resource_id"
    }
}

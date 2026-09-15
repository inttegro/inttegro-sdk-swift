// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentUsageOrder: Codable, Sendable, Equatable {
    public var createdAt: Date
    public var id: String

    public init(
        createdAt: Date,
        id: String
    ) {
        self.createdAt = createdAt
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case id
    }
}

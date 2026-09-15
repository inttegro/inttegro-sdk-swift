// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct SecretKeyPage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var count: Int
    public var total: Int
    public var hasMore: Bool
    public var keys: [SecretKey]

    public init(
        number: Int,
        size: Int,
        count: Int,
        total: Int,
        hasMore: Bool,
        keys: [SecretKey]
    ) {
        self.number = number
        self.size = size
        self.count = count
        self.total = total
        self.hasMore = hasMore
        self.keys = keys
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case size
        case count
        case total
        case hasMore = "has_more"
        case keys
    }
}

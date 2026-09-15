// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentUsage: Codable, Sendable, Equatable {
    public var multiUse: Bool?
    public var order: PurchaseIntentUsageOrder?
    public var singleUse: Bool?

    public init(
        multiUse: Bool? = nil,
        order: PurchaseIntentUsageOrder? = nil,
        singleUse: Bool? = nil
    ) {
        self.multiUse = multiUse
        self.order = order
        self.singleUse = singleUse
    }

    private enum CodingKeys: String, CodingKey {
        case multiUse = "multi_use"
        case order
        case singleUse = "single_use"
    }
}

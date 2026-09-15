// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestUsage: Codable, Sendable, Equatable {
    public var singleUse: Bool?
    public var multiUse: Bool?

    public init(
        singleUse: Bool? = nil,
        multiUse: Bool? = nil
    ) {
        self.singleUse = singleUse
        self.multiUse = multiUse
    }

    private enum CodingKeys: String, CodingKey {
        case singleUse = "single_use"
        case multiUse = "multi_use"
    }
}

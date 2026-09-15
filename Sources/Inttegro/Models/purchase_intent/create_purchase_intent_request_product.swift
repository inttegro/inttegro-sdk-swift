// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreatePurchaseIntentRequestProduct: Codable, Sendable, Equatable {
    public var variantSetId: String?
    public var id: String

    public init(
        variantSetId: String? = nil,
        id: String
    ) {
        self.variantSetId = variantSetId
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case variantSetId = "variant_set_id"
        case id
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UpdatePaymentMethodRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataPatch?
    public var active: Bool?
    public var archived: Bool?
    public var owner: UpdatePaymentMethodRequestOwner?
    public var paymentMethodId: String

    public init(
        customData: CustomDataPatch? = nil,
        active: Bool? = nil,
        archived: Bool? = nil,
        owner: UpdatePaymentMethodRequestOwner? = nil,
        paymentMethodId: String
    ) {
        self.customData = customData
        self.active = active
        self.archived = archived
        self.owner = owner
        self.paymentMethodId = paymentMethodId
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case active
        case archived
        case owner
        case paymentMethodId = "payment_method_id"
    }
}

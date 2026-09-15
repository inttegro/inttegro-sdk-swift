// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ShippingDetailsInput: Codable, Sendable, Equatable {
    public var id: String?
    public var taxCode: String?
    public var customData: CustomDataInput?
    public var fee: AmountParams

    public init(
        id: String? = nil,
        taxCode: String? = nil,
        customData: CustomDataInput? = nil,
        fee: AmountParams
    ) {
        self.id = id
        self.taxCode = taxCode
        self.customData = customData
        self.fee = fee
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case taxCode = "tax_code"
        case customData = "custom_data"
        case fee
    }
}

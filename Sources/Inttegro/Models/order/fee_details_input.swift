// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FeeDetailsInput: Codable, Sendable, Equatable {
    public var id: String?
    public var label: String?
    public var taxCode: String?
    public var description: String?
    public var customData: CustomDataInput?
    public var amount: AmountParams

    public init(
        id: String? = nil,
        label: String? = nil,
        taxCode: String? = nil,
        description: String? = nil,
        customData: CustomDataInput? = nil,
        amount: AmountParams
    ) {
        self.id = id
        self.label = label
        self.taxCode = taxCode
        self.description = description
        self.customData = customData
        self.amount = amount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case label
        case taxCode = "tax_code"
        case description
        case customData = "custom_data"
        case amount
    }
}

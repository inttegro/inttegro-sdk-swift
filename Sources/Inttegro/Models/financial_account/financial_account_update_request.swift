// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountUpdateRequest: Codable, Sendable, Equatable {
    public var customData: CustomDataPatch?
    public var description: String?
    public var label: String?
    public var owner: FinancialAccountOwnerUpdateInput?
    public var reference: String?
    public var accountId: String

    public init(
        customData: CustomDataPatch? = nil,
        description: String? = nil,
        label: String? = nil,
        owner: FinancialAccountOwnerUpdateInput? = nil,
        reference: String? = nil,
        accountId: String
    ) {
        self.customData = customData
        self.description = description
        self.label = label
        self.owner = owner
        self.reference = reference
        self.accountId = accountId
    }

    private enum CodingKeys: String, CodingKey {
        case customData = "custom_data"
        case description
        case label
        case owner
        case reference
        case accountId = "account_id"
    }
}

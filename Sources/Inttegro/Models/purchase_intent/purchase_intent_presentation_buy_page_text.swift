// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Merchant-authored copy returned for a hosted Buy page.
public struct PurchaseIntentPresentationBuyPageText: Codable, Sendable, Equatable {
    public var checkoutSectionTitle: String?
    public var amountFieldLabel: String?
    public var primaryActionLabel: String?

    public init(
        checkoutSectionTitle: String? = nil,
        amountFieldLabel: String? = nil,
        primaryActionLabel: String? = nil
    ) {
        self.checkoutSectionTitle = checkoutSectionTitle
        self.amountFieldLabel = amountFieldLabel
        self.primaryActionLabel = primaryActionLabel
    }

    private enum CodingKeys: String, CodingKey {
        case checkoutSectionTitle = "checkout_section_title"
        case amountFieldLabel = "amount_field_label"
        case primaryActionLabel = "primary_action_label"
    }
}

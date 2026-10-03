// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct UpdatePurchaseIntentPresentation: Codable, Sendable, Equatable {
    public var buyPage: UpdatePurchaseIntentPresentationBuyPage

    public init(buyPage: UpdatePurchaseIntentPresentationBuyPage) {
        self.buyPage = buyPage
    }

    private enum CodingKeys: String, CodingKey {
        case buyPage = "buy_page"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct CreatePurchaseIntentPresentation: Codable, Sendable, Equatable {
    public var buyPage: CreatePurchaseIntentPresentationBuyPage

    public init(buyPage: CreatePurchaseIntentPresentationBuyPage) {
        self.buyPage = buyPage
    }

    private enum CodingKeys: String, CodingKey {
        case buyPage = "buy_page"
    }
}

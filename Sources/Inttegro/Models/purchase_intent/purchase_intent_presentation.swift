// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct PurchaseIntentPresentation: Codable, Sendable, Equatable {
    public var buyPage: PurchaseIntentPresentationBuyPage?

    public init(buyPage: PurchaseIntentPresentationBuyPage? = nil) {
        self.buyPage = buyPage
    }

    private enum CodingKeys: String, CodingKey {
        case buyPage = "buy_page"
    }
}

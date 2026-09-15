// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextActionRedirect: Codable, Sendable, Equatable {
    public var redirectUrl: String
    public var validUntil: Date
    public var latestVisit: PaymentNextActionRedirectLatestVisit?

    public init(
        redirectUrl: String,
        validUntil: Date,
        latestVisit: PaymentNextActionRedirectLatestVisit? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.validUntil = validUntil
        self.latestVisit = latestVisit
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case validUntil = "valid_until"
        case latestVisit = "latest_visit"
    }
}

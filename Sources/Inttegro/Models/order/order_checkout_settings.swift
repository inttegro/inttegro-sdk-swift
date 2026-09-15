// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderCheckoutSettings: Codable, Sendable, Equatable {
    public var redirectUrl: String?
    public var cancelUrl: String?

    public init(
        redirectUrl: String? = nil,
        cancelUrl: String? = nil
    ) {
        self.redirectUrl = redirectUrl
        self.cancelUrl = cancelUrl
    }

    private enum CodingKeys: String, CodingKey {
        case redirectUrl = "redirect_url"
        case cancelUrl = "cancel_url"
    }
}

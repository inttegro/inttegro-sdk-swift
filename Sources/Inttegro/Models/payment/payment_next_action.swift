// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentNextAction: Codable, Sendable, Equatable {
    public var type: PaymentNextActionType
    public var confirmPayment: PaymentNextActionConfirmPayment?
    public var redirect: PaymentNextActionRedirect?
    public var authorize: PaymentNextActionAuthorize?
    public var requestConfirmation: PaymentNextActionRequestConfirmation?

    public init(
        type: PaymentNextActionType,
        confirmPayment: PaymentNextActionConfirmPayment? = nil,
        redirect: PaymentNextActionRedirect? = nil,
        authorize: PaymentNextActionAuthorize? = nil,
        requestConfirmation: PaymentNextActionRequestConfirmation? = nil
    ) {
        self.type = type
        self.confirmPayment = confirmPayment
        self.redirect = redirect
        self.authorize = authorize
        self.requestConfirmation = requestConfirmation
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case confirmPayment = "confirm_payment"
        case redirect
        case authorize
        case requestConfirmation = "request_confirmation"
    }
}

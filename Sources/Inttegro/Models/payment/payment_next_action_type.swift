// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PaymentNextActionType` value used by the Inttegro API.
public struct PaymentNextActionType: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let confirmPayment = Self(rawValue: "confirm_payment")
    public static let execute = Self(rawValue: "execute")
    public static let redirect = Self(rawValue: "redirect")
    public static let authorizePayment = Self(rawValue: "authorize_payment")
    public static let requestConfirmation = Self(rawValue: "request_confirmation")
}

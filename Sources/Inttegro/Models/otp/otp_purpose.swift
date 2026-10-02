// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Customer action protected by an OTP.
public struct OTPPurpose: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let accountCreation = Self(rawValue: "account_creation")
    public static let accountRecovery = Self(rawValue: "account_recovery")
    public static let emailVerification = Self(rawValue: "email_verification")
    public static let financialAccountVerification = Self(rawValue: "financial_account_verification")
    public static let passwordReset = Self(rawValue: "password_reset")
    public static let paymentConfirmation = Self(rawValue: "payment_confirmation")
    public static let paymentMethodVerification = Self(rawValue: "payment_method_verification")
    public static let payoutConfirmation = Self(rawValue: "payout_confirmation")
    public static let phoneVerification = Self(rawValue: "phone_verification")
    public static let sensitiveAction = Self(rawValue: "sensitive_action")
    public static let signIn = Self(rawValue: "sign_in")
    public static let transactionConfirmation = Self(rawValue: "transaction_confirmation")
    public static let unspecified = Self(rawValue: "unspecified")
}

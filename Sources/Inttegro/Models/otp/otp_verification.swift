// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OTPVerification: Codable, Sendable, Equatable {
    public var transaction: OTPTransaction
    public var verificationAttempt: OTPVerificationAttempt

    public init(
        transaction: OTPTransaction,
        verificationAttempt: OTPVerificationAttempt
    ) {
        self.transaction = transaction
        self.verificationAttempt = verificationAttempt
    }

    private enum CodingKeys: String, CodingKey {
        case transaction
        case verificationAttempt = "verification_attempt"
    }
}

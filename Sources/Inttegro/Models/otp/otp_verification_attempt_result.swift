// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OTPVerificationAttemptResult: Codable, Sendable, Equatable {
    public var detail: String?
    public var verdict: OTPVerificationVerdict

    public init(
        detail: String? = nil,
        verdict: OTPVerificationVerdict
    ) {
        self.detail = detail
        self.verdict = verdict
    }
}

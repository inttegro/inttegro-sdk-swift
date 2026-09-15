// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// A typed `PaymentResultStatus` value used by the Inttegro API.
public struct PaymentResultStatus: RawRepresentable, Codable, Hashable, Sendable {
    public let rawValue: String
    public init(rawValue: String) { self.rawValue = rawValue }
    public static let pending = Self(rawValue: "pending")
    public static let requiresConfirmation = Self(rawValue: "requires_confirmation")
    public static let processing = Self(rawValue: "processing")
    public static let succeeded = Self(rawValue: "succeeded")
    public static let failed = Self(rawValue: "failed")
}

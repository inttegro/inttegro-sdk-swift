// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OTPTransaction: Codable, Sendable, Equatable {
    public var cancelReason: String?
    public var canceledAt: Date?
    public var expiresAt: Date
    public var fullMessage: String
    public var id: String
    public var initiatedAt: Date
    public var status: OTPStatus
    public var transmission: OTPTransmission?

    public init(
        cancelReason: String? = nil,
        canceledAt: Date? = nil,
        expiresAt: Date,
        fullMessage: String,
        id: String,
        initiatedAt: Date,
        status: OTPStatus,
        transmission: OTPTransmission? = nil
    ) {
        self.cancelReason = cancelReason
        self.canceledAt = canceledAt
        self.expiresAt = expiresAt
        self.fullMessage = fullMessage
        self.id = id
        self.initiatedAt = initiatedAt
        self.status = status
        self.transmission = transmission
    }

    private enum CodingKeys: String, CodingKey {
        case cancelReason = "cancel_reason"
        case canceledAt = "canceled_at"
        case expiresAt = "expires_at"
        case fullMessage = "full_message"
        case id
        case initiatedAt = "initiated_at"
        case status
        case transmission
    }
}

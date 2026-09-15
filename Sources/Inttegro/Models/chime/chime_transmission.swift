// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeTransmission: Codable, Sendable, Equatable {
    public var address: String
    public var createdAt: Date
    public var deliveredAt: Date?
    public var emailEvents: [ChimeEmailEvent]?
    public var emailFailureCode: String?
    public var emailFailureReason: String?
    public var emailStatus: String?
    public var error: String?
    public var failedAt: Date?
    public var gateway: String
    public var gatewayMessageId: String?
    public var id: String
    public var initializedAt: Date
    public var lastEmailEventAt: Date?
    public var mechanism: ChimeTransport
    public var sentAt: Date?
    public var sentVia: ChimeTransport?
    public var status: String
    public var suppressedAt: Date?
    public var suppressionReason: String?

    public init(
        address: String,
        createdAt: Date,
        deliveredAt: Date? = nil,
        emailEvents: [ChimeEmailEvent]? = nil,
        emailFailureCode: String? = nil,
        emailFailureReason: String? = nil,
        emailStatus: String? = nil,
        error: String? = nil,
        failedAt: Date? = nil,
        gateway: String,
        gatewayMessageId: String? = nil,
        id: String,
        initializedAt: Date,
        lastEmailEventAt: Date? = nil,
        mechanism: ChimeTransport,
        sentAt: Date? = nil,
        sentVia: ChimeTransport? = nil,
        status: String,
        suppressedAt: Date? = nil,
        suppressionReason: String? = nil
    ) {
        self.address = address
        self.createdAt = createdAt
        self.deliveredAt = deliveredAt
        self.emailEvents = emailEvents
        self.emailFailureCode = emailFailureCode
        self.emailFailureReason = emailFailureReason
        self.emailStatus = emailStatus
        self.error = error
        self.failedAt = failedAt
        self.gateway = gateway
        self.gatewayMessageId = gatewayMessageId
        self.id = id
        self.initializedAt = initializedAt
        self.lastEmailEventAt = lastEmailEventAt
        self.mechanism = mechanism
        self.sentAt = sentAt
        self.sentVia = sentVia
        self.status = status
        self.suppressedAt = suppressedAt
        self.suppressionReason = suppressionReason
    }

    private enum CodingKeys: String, CodingKey {
        case address
        case createdAt = "created_at"
        case deliveredAt = "delivered_at"
        case emailEvents = "email_events"
        case emailFailureCode = "email_failure_code"
        case emailFailureReason = "email_failure_reason"
        case emailStatus = "email_status"
        case error
        case failedAt = "failed_at"
        case gateway
        case gatewayMessageId = "gateway_message_id"
        case id
        case initializedAt = "initialized_at"
        case lastEmailEventAt = "last_email_event_at"
        case mechanism
        case sentAt = "sent_at"
        case sentVia = "sent_via"
        case status
        case suppressedAt = "suppressed_at"
        case suppressionReason = "suppression_reason"
    }
}

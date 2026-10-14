import Foundation

/// Current availability of an application capability.
public enum ApplicationCapabilityStatus: String, Codable, Sendable, Equatable {
    case enabled
    case restricted
    case pendingReview = "pending_review"
}

/// Public reason why an application capability is not enabled.
public enum ApplicationCapabilityStatusReason: String, Codable, Sendable, Equatable {
    case setupIncomplete = "setup_incomplete"
    case accountUnderReview = "account_under_review"
    case accountRestricted = "account_restricted"
    case accountInactive = "account_inactive"
}

/// A setup item that must be completed before a capability can be enabled.
public struct ApplicationCapabilityRequirement: Codable, Sendable, Equatable {
    public var code: String
    public var description: String
    public var dueAt: Date?

    public init(code: String, description: String, dueAt: Date?) {
        self.code = code
        self.description = description
        self.dueAt = dueAt
    }

    private enum CodingKeys: String, CodingKey {
        case code, description
        case dueAt = "due_at"
    }
}

/// Requirements that currently prevent a capability from being enabled.
public struct ApplicationCapabilityRequirements: Codable, Sendable, Equatable {
    public var currentlyDue: [ApplicationCapabilityRequirement]

    public init(currentlyDue: [ApplicationCapabilityRequirement]) {
        self.currentlyDue = currentlyDue
    }

    private enum CodingKeys: String, CodingKey {
        case currentlyDue = "currently_due"
    }
}

/// The state of one commerce capability.
public struct ApplicationCapability: Codable, Sendable, Equatable {
    public var status: ApplicationCapabilityStatus
    public var statusChangedAt: Date
    public var statusReason: ApplicationCapabilityStatusReason?
    public var requirements: ApplicationCapabilityRequirements?

    public init(
        status: ApplicationCapabilityStatus,
        statusChangedAt: Date,
        statusReason: ApplicationCapabilityStatusReason? = nil,
        requirements: ApplicationCapabilityRequirements? = nil
    ) {
        self.status = status
        self.statusChangedAt = statusChangedAt
        self.statusReason = statusReason
        self.requirements = requirements
    }

    private enum CodingKeys: String, CodingKey {
        case status, requirements
        case statusChangedAt = "status_changed_at"
        case statusReason = "status_reason"
    }
}

/// Payment and payout capabilities available to the authenticated app.
public struct ApplicationCapabilities: Codable, Sendable, Equatable {
    public var payments: ApplicationCapability
    public var payouts: ApplicationCapability

    public init(payments: ApplicationCapability, payouts: ApplicationCapability) {
        self.payments = payments
        self.payouts = payouts
    }
}

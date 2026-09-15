// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateUploadRequestRequest: Codable, Sendable, Equatable {
    public var constraints: UploadRequestConstraintsInput?
    public var display: UploadRequestDisplayInput?
    public var subject: FilePartyInput?
    public var recipient: FilePartyInput?
    public var resource: FileResourceInput?
    public var requester: FileActorInput?
    public var attempts: UploadRequestAttemptsRequest?
    public var customData: CustomData?
    public var expiresAt: Date?
    public var purpose: String

    public init(
        constraints: UploadRequestConstraintsInput? = nil,
        display: UploadRequestDisplayInput? = nil,
        subject: FilePartyInput? = nil,
        recipient: FilePartyInput? = nil,
        resource: FileResourceInput? = nil,
        requester: FileActorInput? = nil,
        attempts: UploadRequestAttemptsRequest? = nil,
        customData: CustomData? = nil,
        expiresAt: Date? = nil,
        purpose: String
    ) {
        self.constraints = constraints
        self.display = display
        self.subject = subject
        self.recipient = recipient
        self.resource = resource
        self.requester = requester
        self.attempts = attempts
        self.customData = customData
        self.expiresAt = expiresAt
        self.purpose = purpose
    }

    private enum CodingKeys: String, CodingKey {
        case constraints
        case display
        case subject
        case recipient
        case resource
        case requester
        case attempts
        case customData = "custom_data"
        case expiresAt = "expires_at"
        case purpose
    }
}

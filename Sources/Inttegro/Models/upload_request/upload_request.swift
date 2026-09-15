// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct UploadRequest: Codable, Sendable, Equatable {
    public var id: String
    public var purpose: String
    public var status: UploadRequestStatus
    public var active: Bool
    public var fileId: String?
    public var uploadUrl: String?
    public var constraints: UploadRequestConstraints
    public var display: UploadRequestDisplay
    public var subject: FileParty
    public var recipient: FileParty
    public var resource: FileResource
    public var requester: UploadRequestActor
    public var attempts: UploadRequestAttempts
    public var latestError: UploadRequestLatestError?
    public var canceledBy: UploadRequestActor?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var expiresAt: Date
    public var uploadingAt: Date?
    public var fulfilledAt: Date?
    public var expiredAt: Date?
    public var canceledAt: Date?
    public var attempt: UploadRequestAttempt?

    public init(
        id: String,
        purpose: String,
        status: UploadRequestStatus,
        active: Bool,
        fileId: String? = nil,
        uploadUrl: String? = nil,
        constraints: UploadRequestConstraints,
        display: UploadRequestDisplay,
        subject: FileParty,
        recipient: FileParty,
        resource: FileResource,
        requester: UploadRequestActor,
        attempts: UploadRequestAttempts,
        latestError: UploadRequestLatestError? = nil,
        canceledBy: UploadRequestActor? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        expiresAt: Date,
        uploadingAt: Date? = nil,
        fulfilledAt: Date? = nil,
        expiredAt: Date? = nil,
        canceledAt: Date? = nil,
        attempt: UploadRequestAttempt? = nil
    ) {
        self.id = id
        self.purpose = purpose
        self.status = status
        self.active = active
        self.fileId = fileId
        self.uploadUrl = uploadUrl
        self.constraints = constraints
        self.display = display
        self.subject = subject
        self.recipient = recipient
        self.resource = resource
        self.requester = requester
        self.attempts = attempts
        self.latestError = latestError
        self.canceledBy = canceledBy
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.uploadingAt = uploadingAt
        self.fulfilledAt = fulfilledAt
        self.expiredAt = expiredAt
        self.canceledAt = canceledAt
        self.attempt = attempt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purpose
        case status
        case active
        case fileId = "file_id"
        case uploadUrl = "upload_url"
        case constraints
        case display
        case subject
        case recipient
        case resource
        case requester
        case attempts
        case latestError = "latest_error"
        case canceledBy = "canceled_by"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case uploadingAt = "uploading_at"
        case fulfilledAt = "fulfilled_at"
        case expiredAt = "expired_at"
        case canceledAt = "canceled_at"
        case attempt
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileLink: Codable, Sendable, Equatable {
    public var id: String
    public var kind: FileLinkKind
    public var fileId: String
    public var purpose: String
    public var status: FileLinkStatus
    public var active: Bool
    public var delivery: FileLinkDelivery
    public var access: FileLinkAccess
    public var createdBy: FileLinkActor
    public var revokedBy: FileLinkActor?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var expiresAt: Date
    public var revokedAt: Date?

    public init(
        id: String,
        kind: FileLinkKind,
        fileId: String,
        purpose: String,
        status: FileLinkStatus,
        active: Bool,
        delivery: FileLinkDelivery,
        access: FileLinkAccess,
        createdBy: FileLinkActor,
        revokedBy: FileLinkActor? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        expiresAt: Date,
        revokedAt: Date? = nil
    ) {
        self.id = id
        self.kind = kind
        self.fileId = fileId
        self.purpose = purpose
        self.status = status
        self.active = active
        self.delivery = delivery
        self.access = access
        self.createdBy = createdBy
        self.revokedBy = revokedBy
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.expiresAt = expiresAt
        self.revokedAt = revokedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case kind
        case fileId = "file_id"
        case purpose
        case status
        case active
        case delivery
        case access
        case createdBy = "created_by"
        case revokedBy = "revoked_by"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case expiresAt = "expires_at"
        case revokedAt = "revoked_at"
    }
}

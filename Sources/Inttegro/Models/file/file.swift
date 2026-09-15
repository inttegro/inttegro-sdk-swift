// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct File: Codable, Sendable, Equatable {
    public var id: String
    public var purpose: String
    public var status: FileStatus
    public var scanStatus: FileScanStatus
    public var name: String?
    public var filename: String?
    public var contentType: String
    public var size: Int
    public var checksumSha256: String
    public var createdBy: FileActor
    public var source: FileSource
    public var media: FileMedia?
    public var storage: PublicFileStorage
    public var delivery: FileDeliveryDetails?
    public var latestError: FileLatestError?
    public var customData: CustomData?
    public var metadata: FileMetadata?
    public var createdAt: Date
    public var updatedAt: Date
    public var availableAt: Date?
    public var expiresAt: Date?

    public init(
        id: String,
        purpose: String,
        status: FileStatus,
        scanStatus: FileScanStatus,
        name: String? = nil,
        filename: String? = nil,
        contentType: String,
        size: Int,
        checksumSha256: String,
        createdBy: FileActor,
        source: FileSource,
        media: FileMedia? = nil,
        storage: PublicFileStorage,
        delivery: FileDeliveryDetails? = nil,
        latestError: FileLatestError? = nil,
        customData: CustomData? = nil,
        metadata: FileMetadata? = nil,
        createdAt: Date,
        updatedAt: Date,
        availableAt: Date? = nil,
        expiresAt: Date? = nil
    ) {
        self.id = id
        self.purpose = purpose
        self.status = status
        self.scanStatus = scanStatus
        self.name = name
        self.filename = filename
        self.contentType = contentType
        self.size = size
        self.checksumSha256 = checksumSha256
        self.createdBy = createdBy
        self.source = source
        self.media = media
        self.storage = storage
        self.delivery = delivery
        self.latestError = latestError
        self.customData = customData
        self.metadata = metadata
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.availableAt = availableAt
        self.expiresAt = expiresAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case purpose
        case status
        case scanStatus = "scan_status"
        case name
        case filename
        case contentType = "content_type"
        case size
        case checksumSha256 = "checksum_sha256"
        case createdBy = "created_by"
        case source
        case media
        case storage
        case delivery
        case latestError = "latest_error"
        case customData = "custom_data"
        case metadata
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case availableAt = "available_at"
        case expiresAt = "expires_at"
    }
}

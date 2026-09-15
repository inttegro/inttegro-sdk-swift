// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct CreateFileLinkRequest: Codable, Sendable, Equatable {
    public var delivery: FileLinkDeliveryInput?
    public var access: FileLinkAccessRequest?
    public var createdBy: FileActorInput?
    public var customData: CustomData?
    public var expiresAt: Date?
    public var fileId: String

    public init(
        delivery: FileLinkDeliveryInput? = nil,
        access: FileLinkAccessRequest? = nil,
        createdBy: FileActorInput? = nil,
        customData: CustomData? = nil,
        expiresAt: Date? = nil,
        fileId: String
    ) {
        self.delivery = delivery
        self.access = access
        self.createdBy = createdBy
        self.customData = customData
        self.expiresAt = expiresAt
        self.fileId = fileId
    }

    private enum CodingKeys: String, CodingKey {
        case delivery
        case access
        case createdBy = "created_by"
        case customData = "custom_data"
        case expiresAt = "expires_at"
        case fileId = "file_id"
    }
}

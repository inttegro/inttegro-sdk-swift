// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplate: Codable, Sendable, Equatable {
    public var id: String
    public var name: String
    public var about: String?
    public var channel: MessageTemplateChannel
    public var purpose: String
    public var locale: String
    public var status: MessageTemplateStatus
    public var version: Int
    public var publishedVersion: Int?
    public var draftVersion: Int
    public var hasUnpublishedChanges: Bool
    public var variables: [MessageTemplateVariable]?
    public var sms: MessageTemplateSMSContent?
    public var email: MessageTemplateEmailContent?
    public var attachments: [String]?
    public var createdAt: Date
    public var updatedAt: Date
    public var publishedAt: Date?
    public var archivedAt: Date?

    public init(
        id: String,
        name: String,
        about: String? = nil,
        channel: MessageTemplateChannel,
        purpose: String,
        locale: String,
        status: MessageTemplateStatus,
        version: Int,
        publishedVersion: Int? = nil,
        draftVersion: Int,
        hasUnpublishedChanges: Bool,
        variables: [MessageTemplateVariable]? = nil,
        sms: MessageTemplateSMSContent? = nil,
        email: MessageTemplateEmailContent? = nil,
        attachments: [String]? = nil,
        createdAt: Date,
        updatedAt: Date,
        publishedAt: Date? = nil,
        archivedAt: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.about = about
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
        self.status = status
        self.version = version
        self.publishedVersion = publishedVersion
        self.draftVersion = draftVersion
        self.hasUnpublishedChanges = hasUnpublishedChanges
        self.variables = variables
        self.sms = sms
        self.email = email
        self.attachments = attachments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.publishedAt = publishedAt
        self.archivedAt = archivedAt
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case about
        case channel
        case purpose
        case locale
        case status
        case version
        case publishedVersion = "published_version"
        case draftVersion = "draft_version"
        case hasUnpublishedChanges = "has_unpublished_changes"
        case variables
        case sms
        case email
        case attachments
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case publishedAt = "published_at"
        case archivedAt = "archived_at"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageMessageTemplatesRequest: Codable, Sendable, Equatable {
    public var page: Int?
    public var size: Int?
    public var status: MessageTemplateStatus?
    public var channel: MessageTemplateChannel?
    public var purpose: String?
    public var locale: String?

    public init(
        page: Int? = nil,
        size: Int? = nil,
        status: MessageTemplateStatus? = nil,
        channel: MessageTemplateChannel? = nil,
        purpose: String? = nil,
        locale: String? = nil
    ) {
        self.page = page
        self.size = size
        self.status = status
        self.channel = channel
        self.purpose = purpose
        self.locale = locale
    }
}

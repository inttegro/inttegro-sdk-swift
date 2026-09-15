// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct MessageTemplateSafetyResult: Codable, Sendable, Equatable {
    public var contentHash: String
    public var links: [MessageTemplateScannedLink]?
    public var normalizedText: String
    public var quarantineNotes: String?
    public var reasonCodes: [String]?
    public var sanitizedHtml: String?
    public var scanner: String
    public var status: ContentSafetyStatus

    public init(
        contentHash: String,
        links: [MessageTemplateScannedLink]? = nil,
        normalizedText: String,
        quarantineNotes: String? = nil,
        reasonCodes: [String]? = nil,
        sanitizedHtml: String? = nil,
        scanner: String,
        status: ContentSafetyStatus
    ) {
        self.contentHash = contentHash
        self.links = links
        self.normalizedText = normalizedText
        self.quarantineNotes = quarantineNotes
        self.reasonCodes = reasonCodes
        self.sanitizedHtml = sanitizedHtml
        self.scanner = scanner
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case contentHash = "content_hash"
        case links
        case normalizedText = "normalized_text"
        case quarantineNotes = "quarantine_notes"
        case reasonCodes = "reason_codes"
        case sanitizedHtml = "sanitized_html"
        case scanner
        case status
    }
}

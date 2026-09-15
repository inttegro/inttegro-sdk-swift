// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeEmailSafetyResult: Codable, Sendable, Equatable {
    public var status: ContentSafetyStatus?
    public var reasonCodes: [String]?
    public var sanitizedHtml: String?
    public var normalizedText: String?
    public var links: [ChimeEmailScannedLink]?
    public var scanner: String?
    public var contentHash: String?
    public var quarantineNotes: String?

    public init(
        status: ContentSafetyStatus? = nil,
        reasonCodes: [String]? = nil,
        sanitizedHtml: String? = nil,
        normalizedText: String? = nil,
        links: [ChimeEmailScannedLink]? = nil,
        scanner: String? = nil,
        contentHash: String? = nil,
        quarantineNotes: String? = nil
    ) {
        self.status = status
        self.reasonCodes = reasonCodes
        self.sanitizedHtml = sanitizedHtml
        self.normalizedText = normalizedText
        self.links = links
        self.scanner = scanner
        self.contentHash = contentHash
        self.quarantineNotes = quarantineNotes
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case reasonCodes = "reason_codes"
        case sanitizedHtml = "sanitized_html"
        case normalizedText = "normalized_text"
        case links
        case scanner
        case contentHash = "content_hash"
        case quarantineNotes = "quarantine_notes"
    }
}

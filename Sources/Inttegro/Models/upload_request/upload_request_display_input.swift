// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct UploadRequestDisplayInput: Codable, Sendable, Equatable {
    public var title: String?
    public var description: String?
    public var helpText: String?

    public init(
        title: String? = nil,
        description: String? = nil,
        helpText: String? = nil
    ) {
        self.title = title
        self.description = description
        self.helpText = helpText
    }

    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case helpText = "help_text"
    }
}

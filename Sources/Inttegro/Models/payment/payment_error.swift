// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

public struct PaymentError: Codable, Sendable, Equatable {
    public var message: String
    public var docsUrl: String
    public var source: String
    public var type: String
    public var code: String

    public init(message: String, docsUrl: String, source: String, type: String, code: String) {
        self.message = message
        self.docsUrl = docsUrl
        self.source = source
        self.type = type
        self.code = code
    }

    private enum CodingKeys: String, CodingKey {
        case message
        case docsUrl = "docs_url"
        case source
        case type
        case code
    }
}

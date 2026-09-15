// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct PageSecretKeysRequest: Codable, Sendable, Equatable {
    public var page: Int?
    public var number: Int?
    public var size: Int?

    public init(
        page: Int? = nil,
        number: Int? = nil,
        size: Int? = nil
    ) {
        self.page = page
        self.number = number
        self.size = size
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FilePage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var files: [File]

    public init(
        number: Int,
        size: Int,
        files: [File]
    ) {
        self.number = number
        self.size = size
        self.files = files
    }
}

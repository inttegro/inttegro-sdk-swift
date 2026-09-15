// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimePage: Codable, Sendable, Equatable {
    public var number: Int
    public var size: Int
    public var chimes: [Chime]

    public init(
        number: Int,
        size: Int,
        chimes: [Chime]
    ) {
        self.number = number
        self.size = size
        self.chimes = chimes
    }
}

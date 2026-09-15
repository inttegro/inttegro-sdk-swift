// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FileMedia: Codable, Sendable, Equatable {
    public var kind: String?
    public var width: Int?
    public var height: Int?
    public var durationMs: Int?
    public var pageCount: Int?
    public var frameCount: Int?
    public var colorSpace: String?
    public var hasAlpha: Bool?
    public var codec: String?
    public var aspectRatio: String?

    public init(
        kind: String? = nil,
        width: Int? = nil,
        height: Int? = nil,
        durationMs: Int? = nil,
        pageCount: Int? = nil,
        frameCount: Int? = nil,
        colorSpace: String? = nil,
        hasAlpha: Bool? = nil,
        codec: String? = nil,
        aspectRatio: String? = nil
    ) {
        self.kind = kind
        self.width = width
        self.height = height
        self.durationMs = durationMs
        self.pageCount = pageCount
        self.frameCount = frameCount
        self.colorSpace = colorSpace
        self.hasAlpha = hasAlpha
        self.codec = codec
        self.aspectRatio = aspectRatio
    }

    private enum CodingKeys: String, CodingKey {
        case kind
        case width
        case height
        case durationMs = "duration_ms"
        case pageCount = "page_count"
        case frameCount = "frame_count"
        case colorSpace = "color_space"
        case hasAlpha = "has_alpha"
        case codec
        case aspectRatio = "aspect_ratio"
    }
}

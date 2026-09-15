// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ProductMedia: Codable, Sendable, Equatable {
    public var heroImage: String?
    public var thumbnail: String?
    public var webPageUrl: String?
    public var brandLogo: String?
    public var infographic: String?
    public var promoVideo: String?
    public var demoVideo: String?
    public var gallery: [String]?
    public var downloads: [String]?

    public init(
        heroImage: String? = nil,
        thumbnail: String? = nil,
        webPageUrl: String? = nil,
        brandLogo: String? = nil,
        infographic: String? = nil,
        promoVideo: String? = nil,
        demoVideo: String? = nil,
        gallery: [String]? = nil,
        downloads: [String]? = nil
    ) {
        self.heroImage = heroImage
        self.thumbnail = thumbnail
        self.webPageUrl = webPageUrl
        self.brandLogo = brandLogo
        self.infographic = infographic
        self.promoVideo = promoVideo
        self.demoVideo = demoVideo
        self.gallery = gallery
        self.downloads = downloads
    }

    private enum CodingKeys: String, CodingKey {
        case heroImage = "hero_image"
        case thumbnail
        case webPageUrl = "web_page_url"
        case brandLogo = "brand_logo"
        case infographic
        case promoVideo = "promo_video"
        case demoVideo = "demo_video"
        case gallery
        case downloads
    }
}

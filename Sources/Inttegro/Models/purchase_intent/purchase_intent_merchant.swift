// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PurchaseIntentMerchant: Codable, Sendable, Equatable {
    public var appName: String?
    public var organizationId: String?
    public var organizationName: String?

    public init(
        appName: String? = nil,
        organizationId: String? = nil,
        organizationName: String? = nil
    ) {
        self.appName = appName
        self.organizationId = organizationId
        self.organizationName = organizationName
    }

    private enum CodingKeys: String, CodingKey {
        case appName = "app_name"
        case organizationId = "organization_id"
        case organizationName = "organization_name"
    }
}

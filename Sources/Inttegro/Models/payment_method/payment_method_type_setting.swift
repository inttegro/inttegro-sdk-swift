// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodTypeSetting: Codable, Sendable, Equatable {
    public var type: PaymentMethodType?
    public var name: String?
    public var description: String?
    public var enabled: Bool
    public var confirmsUse: Bool

    public init(
        type: PaymentMethodType? = nil,
        name: String? = nil,
        description: String? = nil,
        enabled: Bool,
        confirmsUse: Bool
    ) {
        self.type = type
        self.name = name
        self.description = description
        self.enabled = enabled
        self.confirmsUse = confirmsUse
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case name
        case description
        case enabled
        case confirmsUse = "confirms_use"
    }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct InvoiceSettingsInput: Codable, Sendable, Equatable {
    public var number: String?
    public var memo: String?
    public var footer: String?
    public var customData: CustomData?

    public init(
        number: String? = nil,
        memo: String? = nil,
        footer: String? = nil,
        customData: CustomData? = nil
    ) {
        self.number = number
        self.memo = memo
        self.footer = footer
        self.customData = customData
    }

    private enum CodingKeys: String, CodingKey {
        case number
        case memo
        case footer
        case customData = "custom_data"
    }
}

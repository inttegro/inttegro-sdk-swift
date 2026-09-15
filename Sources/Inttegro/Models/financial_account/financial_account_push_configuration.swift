// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountPushConfiguration: Codable, Sendable, Equatable {
    public var enabledAt: Date

    public init(
        enabledAt: Date
    ) {
        self.enabledAt = enabledAt
    }

    private enum CodingKeys: String, CodingKey {
        case enabledAt = "enabled_at"
    }
}

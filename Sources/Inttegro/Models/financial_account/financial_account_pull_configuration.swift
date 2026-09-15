// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountPullConfiguration: Codable, Sendable, Equatable {
    public var enabledAt: Date
    public var mandate: FinancialAccountPullConfigurationMandate

    public init(
        enabledAt: Date,
        mandate: FinancialAccountPullConfigurationMandate
    ) {
        self.enabledAt = enabledAt
        self.mandate = mandate
    }

    private enum CodingKeys: String, CodingKey {
        case enabledAt = "enabled_at"
        case mandate
    }
}

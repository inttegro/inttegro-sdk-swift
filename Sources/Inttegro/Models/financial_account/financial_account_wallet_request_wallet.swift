// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FinancialAccountWalletRequestWallet: Codable, Sendable, Equatable {
    public var type: WalletType
    public var mobileMoney: FinancialAccountWalletRequestWalletMobileMoney

    public init(
        type: WalletType,
        mobileMoney: FinancialAccountWalletRequestWalletMobileMoney
    ) {
        self.type = type
        self.mobileMoney = mobileMoney
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case mobileMoney = "mobile_money"
    }
}

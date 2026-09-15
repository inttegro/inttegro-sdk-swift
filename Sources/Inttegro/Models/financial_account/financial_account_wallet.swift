// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct FinancialAccountWallet: Codable, Sendable, Equatable {
    public var id: String
    public var type: WalletType
    public var mobileMoney: FinancialAccountWalletMobileMoney?

    public init(
        id: String,
        type: WalletType,
        mobileMoney: FinancialAccountWalletMobileMoney? = nil
    ) {
        self.id = id
        self.type = type
        self.mobileMoney = mobileMoney
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case mobileMoney = "mobile_money"
    }
}

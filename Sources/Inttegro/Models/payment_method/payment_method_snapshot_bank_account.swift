// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct PaymentMethodSnapshotBankAccount: Codable, Sendable, Equatable {
    public var type: String
    public var ghanaBankAccount: PaymentMethodSnapshotGhanaBankAccount?

    public init(
        type: String,
        ghanaBankAccount: PaymentMethodSnapshotGhanaBankAccount? = nil
    ) {
        self.type = type
        self.ghanaBankAccount = ghanaBankAccount
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case ghanaBankAccount = "ghana_bank_account"
    }
}

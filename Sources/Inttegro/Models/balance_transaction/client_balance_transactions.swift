// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro balance transactions.
public struct BalanceTransactions: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a balance transaction
    public func lookup(_ request: LookupBalanceTransactionRequest, options: RequestOptions = .init()) async throws -> BalanceTransaction {
        try await client.request(method: "POST", path: "/balance_transactions/lookup", body: request, options: options, operation: "balance_transactions.lookup", field: "transaction", authenticated: true)
    }

    /// Page through balance transactions
    public func page(_ request: PageBalanceTransactionsRequest, options: RequestOptions = .init()) async throws -> BalanceTransactionPage {
        try await client.request(method: "POST", path: "/balance_transactions/page", body: request, options: options, operation: "balance_transactions.page", field: "page", authenticated: true)
    }

}

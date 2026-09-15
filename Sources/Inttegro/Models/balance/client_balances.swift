// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro balances.
public struct Balances: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Retrieve your balance
    public func get(options: RequestOptions = .init()) async throws -> BalanceSnapshot {
        try await client.request(method: "POST", path: "/balances", body: EmptyBody(), options: options, operation: "balances.get", field: "balances", authenticated: true)
    }

}

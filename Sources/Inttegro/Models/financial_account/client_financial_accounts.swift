// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro financial accounts.
public struct FinancialAccounts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a financial account
    public func create(_ request: FinancialAccountCreateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/create", body: request, options: options, operation: "financial_accounts.create", field: "account", authenticated: true)
    }

    /// Lookup a financial account
    public func lookup(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/lookup", body: request, options: options, operation: "financial_accounts.lookup", field: "account", authenticated: true)
    }

    /// Page through financial accounts
    public func page(_ request: FinancialAccountPageRequest, options: RequestOptions = .init()) async throws -> FinancialAccountPage {
        try await client.request(method: "POST", path: "/financial_accounts/page", body: request, options: options, operation: "financial_accounts.page", field: "page", authenticated: true)
    }

    public func search(_ request: ResourceSearchRequest, options: RequestOptions = .init()) async throws -> ResourceSearchPage {
        try await client.request(method: "POST", path: "/financial_accounts/search", body: request, options: options, operation: "financial_accounts.search", field: "search", authenticated: true)
    }

    /// Connect a financial account
    public func connect(_ request: FinancialAccountCreateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/connect", body: request, options: options, operation: "financial_accounts.connect", field: "account", authenticated: true)
    }

    /// Update a financial account
    public func update(_ request: FinancialAccountUpdateRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/update", body: request, options: options, operation: "financial_accounts.update", field: "account", authenticated: true)
    }

    /// Enable push capability
    public func enablePush(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/enable_push", body: request, options: options, operation: "financial_accounts.enable_push", field: "account", authenticated: true)
    }

    /// Disable push capability
    public func disablePush(_ request: FinancialAccountDisableRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disable_push", body: request, options: options, operation: "financial_accounts.disable_push", field: "account", authenticated: true)
    }

    /// Disconnect a financial account
    public func disconnect(_ request: FinancialAccountDisableRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disconnect", body: request, options: options, operation: "financial_accounts.disconnect", field: "account", authenticated: true)
    }

    /// Reconnect a financial account
    public func reconnect(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/reconnect", body: request, options: options, operation: "financial_accounts.reconnect", field: "account", authenticated: true)
    }

    /// Enable pull capability
    public func enablePull(_ request: FinancialAccountEnablePullRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/enable_pull", body: request, options: options, operation: "financial_accounts.enable_pull", field: "account", authenticated: true)
    }

    /// Disable pull capability
    public func disablePull(_ request: FinancialAccountIDRequest, options: RequestOptions = .init()) async throws -> FinancialAccount {
        try await client.request(method: "POST", path: "/financial_accounts/disable_pull", body: request, options: options, operation: "financial_accounts.disable_pull", field: "account", authenticated: true)
    }

}

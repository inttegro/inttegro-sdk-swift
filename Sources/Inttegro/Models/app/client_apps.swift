// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro apps.
public struct Apps: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create an application
    public func create(_ request: CreateApplicationRequest, options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/create", body: request, options: options, operation: "apps.create", field: "app", authenticated: true)
    }

    /// Retrieve the authenticated application
    public func lookup(options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/lookup", body: EmptyBody(), options: options, operation: "apps.lookup", field: "app", authenticated: true)
    }

    /// Retrieve the authenticated application's payment and payout capabilities
    public func capabilities(options: RequestOptions = .init()) async throws -> ApplicationCapabilities {
        try await client.request(method: "POST", path: "/apps/capabilities", body: EmptyBody(), options: options, operation: "apps.capabilities", field: "capabilities", authenticated: true)
    }

    /// Update the authenticated application
    public func update(_ request: UpdateApplicationRequest, options: RequestOptions = .init()) async throws -> Application {
        try await client.request(method: "POST", path: "/apps/update", body: request, options: options, operation: "apps.update", field: "app", authenticated: true)
    }

}

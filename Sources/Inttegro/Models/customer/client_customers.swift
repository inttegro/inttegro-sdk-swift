// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro customers.
public struct Customers: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a customer
    public func create(_ request: CreateCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/create", body: request, options: options, operation: "customers.create", field: "customer", authenticated: true)
    }

    /// Look up a customer
    public func lookup(_ request: LookupCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/lookup", body: request, options: options, operation: "customers.lookup", field: "customer", authenticated: true)
    }

    /// Update a customer
    public func update(_ request: UpdateCustomerRequest, options: RequestOptions = .init()) async throws -> Customer {
        try await client.request(method: "POST", path: "/customers/update", body: request, options: options, operation: "customers.update", field: "customer", authenticated: true)
    }

    /// Page through customers
    public func page(_ request: PageCustomersRequest, options: RequestOptions = .init()) async throws -> CustomerPage {
        try await client.request(method: "POST", path: "/customers/page", body: request, options: options, operation: "customers.page", field: "page", authenticated: true)
    }

    public func search(_ request: ResourceSearchRequest, options: RequestOptions = .init()) async throws -> ResourceSearchPage {
        try await client.request(method: "POST", path: "/customers/search", body: request, options: options, operation: "customers.search", field: "search", authenticated: true)
    }

}

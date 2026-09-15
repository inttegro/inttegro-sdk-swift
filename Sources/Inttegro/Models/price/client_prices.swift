// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro prices.
public struct Prices: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a price
    public func create(_ request: CatalogPriceParams, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/create", body: request, options: options, operation: "prices.create", field: "price", authenticated: true)
    }

    /// Lookup a price
    public func lookup(_ request: LookupPriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/lookup", body: request, options: options, operation: "prices.lookup", field: "price", authenticated: true)
    }

    /// Page through prices
    public func page(_ request: PricePageRequest, options: RequestOptions = .init()) async throws -> PricePage {
        try await client.request(method: "POST", path: "/prices/page", body: request, options: options, operation: "prices.page", field: "page", authenticated: true)
    }

    /// Update a price
    public func update(_ request: UpdatePriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/update", body: request, options: options, operation: "prices.update", field: "price", authenticated: true)
    }

    /// Activate a price
    public func activate(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/activate", body: request, options: options, operation: "prices.activate", field: "price", authenticated: true)
    }

    /// Deactivate a price
    public func deactivate(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/deactivate", body: request, options: options, operation: "prices.deactivate", field: "price", authenticated: true)
    }

    /// Archive a price
    public func archive(_ request: PriceActionRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/prices/archive", body: request, options: options, operation: "prices.archive", field: "price", authenticated: true)
    }

}

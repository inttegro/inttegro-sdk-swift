// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro products.
public struct Products: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a product
    public func create(_ request: CreateProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/create", body: request, options: options, operation: "products.create", field: "product", authenticated: true)
    }

    /// Add a price to a product
    public func addPrice(_ request: AddProductPriceRequest, options: RequestOptions = .init()) async throws -> CatalogPrice {
        try await client.request(method: "POST", path: "/products/add_price", body: request, options: options, operation: "products.add_price", field: "price", authenticated: true)
    }

    /// Lookup a product
    public func lookup(_ request: LookupProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/lookup", body: request, options: options, operation: "products.lookup", field: "product", authenticated: true)
    }

    /// Update a product
    public func update(_ request: UpdateProductRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/update", body: request, options: options, operation: "products.update", field: "product", authenticated: true)
    }

    /// Publish a product
    public func publish(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/publish", body: request, options: options, operation: "products.publish", field: "product", authenticated: true)
    }

    /// Unpublish a product
    public func unpublish(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/unpublish", body: request, options: options, operation: "products.unpublish", field: "product", authenticated: true)
    }

    /// Archive a product
    public func archive(_ request: ProductActionRequest, options: RequestOptions = .init()) async throws -> Product {
        try await client.request(method: "POST", path: "/products/archive", body: request, options: options, operation: "products.archive", field: "product", authenticated: true)
    }

    /// Page through products
    public func page(_ request: PageProductsRequest, options: RequestOptions = .init()) async throws -> ProductPage {
        try await client.request(method: "POST", path: "/products/page", body: request, options: options, operation: "products.page", field: "page", authenticated: true)
    }

}

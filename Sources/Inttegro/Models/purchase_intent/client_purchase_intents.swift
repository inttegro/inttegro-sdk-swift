// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro purchase intents.
public struct PurchaseIntents: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a purchase intent
    public func create(_ request: CreatePurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/create", body: request, options: options, operation: "purchase_intents.create", field: "purchase_intent", authenticated: true)
    }

    /// Update a purchase intent
    public func update(_ request: UpdatePurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/update", body: request, options: options, operation: "purchase_intents.update", field: "purchase_intent", authenticated: true)
    }

    /// Cancel a purchase intent
    public func cancel(_ request: CancelPurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/cancel", body: request, options: options, operation: "purchase_intents.cancel", field: "purchase_intent", authenticated: true)
    }

    /// Lookup a purchase intent
    public func lookup(_ request: LookupPurchaseIntentRequest, options: RequestOptions = .init()) async throws -> PurchaseIntent {
        try await client.request(method: "POST", path: "/purchase_intents/lookup", body: request, options: options, operation: "purchase_intents.lookup", field: "purchase_intent", authenticated: true)
    }

    /// List purchase intents
    public func page(_ request: PagePurchaseIntentsRequest, options: RequestOptions = .init()) async throws -> PurchaseIntentPage {
        try await client.request(method: "POST", path: "/purchase_intents/page", body: request, options: options, operation: "purchase_intents.page", field: "page", authenticated: true)
    }

}

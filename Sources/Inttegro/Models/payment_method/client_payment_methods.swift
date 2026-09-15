// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro payment methods.
public struct PaymentMethods: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Tokenize a payment method
    public func tokenize(_ request: TokenizeMobileMoneyPaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/tokenize", body: request, options: options, operation: "payment_methods.tokenize", field: "payment_method", authenticated: true)
    }

    /// Lookup a payment method
    public func lookup(_ request: LookupPaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/lookup", body: request, options: options, operation: "payment_methods.lookup", field: "payment_method", authenticated: true)
    }

    /// Page payment methods
    public func page(_ request: PaymentMethodPageRequest, options: RequestOptions = .init()) async throws -> PaymentMethodPage {
        try await client.request(method: "POST", path: "/payment_methods/page", body: request, options: options, operation: "payment_methods.page", field: "page", authenticated: true)
    }

    /// Update a payment method
    public func update(_ request: UpdatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/update", body: request, options: options, operation: "payment_methods.update", field: "payment_method", authenticated: true)
    }

    /// Activate a payment method
    public func activate(_ request: ActivatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/activate", body: request, options: options, operation: "payment_methods.activate", field: "payment_method", authenticated: true)
    }

    /// Deactivate a payment method
    public func deactivate(_ request: DisactivatePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/disactivate", body: request, options: options, operation: "payment_methods.deactivate", field: "payment_method", authenticated: true)
    }

    /// Archive a payment method
    public func archive(_ request: ArchivePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/archive", body: request, options: options, operation: "payment_methods.archive", field: "payment_method", authenticated: true)
    }

    /// Unarchive a payment method
    public func unarchive(_ request: UnarchivePaymentMethodRequest, options: RequestOptions = .init()) async throws -> PaymentMethod {
        try await client.request(method: "POST", path: "/payment_methods/unarchive", body: request, options: options, operation: "payment_methods.unarchive", field: "payment_method", authenticated: true)
    }

    /// Get payment method settings
    public func settings(options: RequestOptions = .init()) async throws -> PaymentMethodSettings {
        try await client.request(method: "POST", path: "/payment_methods/settings", body: EmptyBody(), options: options, operation: "payment_methods.settings", field: "settings", authenticated: true)
    }

}

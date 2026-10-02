// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro orders.
public struct Orders: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a new order
    public func create(_ request: CreateOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/create", body: request, options: options, operation: "orders.create", field: "order", authenticated: true)
    }

    /// Lookup an order
    public func lookup(_ request: LookupOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/lookup", body: request, options: options, operation: "orders.lookup", field: "order", authenticated: true)
    }

    /// Update an order
    public func update(_ request: UpdateOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/update", body: request, options: options, operation: "orders.update", field: "order", authenticated: true)
    }

    /// Pay for an order
    public func pay(_ request: PayOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/pay", body: request, options: options, operation: "orders.pay", field: "order", authenticated: true)
    }

    /// Confirm payment with token
    public func confirmPayment(_ request: ConfirmPaymentRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/confirm_payment", body: request, options: options, operation: "orders.confirm_payment", field: "order", authenticated: true)
    }

    /// Request payment confirmation
    public func requestConfirmation(_ request: RequestConfirmationRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/request_confirmation", body: request, options: options, operation: "orders.request_confirmation", field: "order", authenticated: true)
    }

    /// Cancel an order
    public func cancel(_ request: CancelOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/cancel", body: request, options: options, operation: "orders.cancel", field: "order", authenticated: true)
    }

    /// Finalize an order
    public func finalize(_ request: FinalizeOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/finalize", body: request, options: options, operation: "orders.finalize", field: "order", authenticated: true)
    }

    /// Complete an order
    public func complete(_ request: CompleteOrderRequest, options: RequestOptions = .init()) async throws -> Order {
        try await client.request(method: "POST", path: "/orders/complete", body: request, options: options, operation: "orders.complete", field: "order", authenticated: true)
    }

    /// Send an order invoice
    public func sendInvoice(_ request: OrderDocumentDeliveryRequest, options: RequestOptions = .init()) async throws -> OrderDocumentDeliveryResult {
        try await client.request(method: "POST", path: "/orders/send_invoice", body: request, options: options, operation: "orders.send_invoice", field: nil, authenticated: true)
    }

    /// Send an order receipt
    public func sendReceipt(_ request: OrderDocumentDeliveryRequest, options: RequestOptions = .init()) async throws -> OrderDocumentDeliveryResult {
        try await client.request(method: "POST", path: "/orders/send_receipt", body: request, options: options, operation: "orders.send_receipt", field: nil, authenticated: true)
    }

    /// Page through orders
    public func page(_ request: PageOrdersRequest, options: RequestOptions = .init()) async throws -> OrderPage {
        try await client.request(method: "POST", path: "/orders/page", body: request, options: options, operation: "orders.page", field: "page", authenticated: true)
    }

    public func search(_ request: ResourceSearchRequest, options: RequestOptions = .init()) async throws -> ResourceSearchPage {
        try await client.request(method: "POST", path: "/orders/search", body: request, options: options, operation: "orders.search", field: "search", authenticated: true)
    }

}

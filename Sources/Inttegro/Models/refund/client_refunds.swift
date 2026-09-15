// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro refunds.
public struct Refunds: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a refund
    public func create(_ request: CreateRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/create", body: request, options: options, operation: "refunds.create", field: "refund", authenticated: true)
    }

    /// Cancel a refund
    public func cancel(_ request: CancelRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/cancel", body: request, options: options, operation: "refunds.cancel", field: "refund", authenticated: true)
    }

    /// Look up a refund
    public func lookup(_ request: LookupRefundRequest, options: RequestOptions = .init()) async throws -> Refund {
        try await client.request(method: "POST", path: "/refunds/lookup", body: request, options: options, operation: "refunds.lookup", field: "refund", authenticated: true)
    }

    /// Page through refunds
    public func page(_ request: PageRefundsRequest, options: RequestOptions = .init()) async throws -> RefundPage {
        try await client.request(method: "POST", path: "/refunds/page", body: request, options: options, operation: "refunds.page", field: "page", authenticated: true)
    }

}

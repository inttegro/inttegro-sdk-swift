// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro broadcasts.
public struct Broadcasts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a broadcast
    public func lookup(_ request: LookupBroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastDetail {
        try await client.request(method: "POST", path: "/broadcasts/lookup", body: request, options: options, operation: "broadcasts.lookup", field: "broadcast", authenticated: true)
    }

    /// Cancel a broadcast
    public func cancel(_ request: CancelBroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastDetail {
        try await client.request(method: "POST", path: "/broadcasts/cancel", body: request, options: options, operation: "broadcasts.cancel", field: "broadcast", authenticated: true)
    }

}

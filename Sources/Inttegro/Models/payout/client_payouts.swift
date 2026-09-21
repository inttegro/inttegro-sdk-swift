// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro payouts.
public struct Payouts: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Schedule a payout
    public func schedule(_ request: SchedulePayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/schedule", body: request, options: options, operation: "payouts.schedule", field: "payout", authenticated: true)
    }

    /// Lookup a payout
    public func lookup(_ request: LookupPayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/lookup", body: request, options: options, operation: "payouts.lookup", field: "payout", authenticated: true)
    }

    /// Set payout destinations
    public func setDestinations(_ request: SetPayoutDestinationsRequest, options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/set_destinations", body: request, options: options, operation: "payouts.set_destinations", field: "settings", authenticated: true)
    }

    /// Get payout settings
    public func settings(options: RequestOptions = .init()) async throws -> PayoutSettingsLookup {
        try await client.request(method: "POST", path: "/payouts/settings", body: EmptyBody(), options: options, operation: "payouts.settings", field: "settings", authenticated: true)
    }

    /// Disable automatic payouts
    public func disable(options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/disable", body: EmptyBody(), options: options, operation: "payouts.disable", field: "settings", authenticated: true)
    }

    /// Enable automatic payouts
    public func enable(options: RequestOptions = .init()) async throws -> PayoutSettingsMutation {
        try await client.request(method: "POST", path: "/payouts/enable", body: EmptyBody(), options: options, operation: "payouts.enable", field: "settings", authenticated: true)
    }

    /// Page through payouts
    public func page(_ request: PagePayoutsRequest, options: RequestOptions = .init()) async throws -> PayoutPage {
        try await client.request(method: "POST", path: "/payouts/page", body: request, options: options, operation: "payouts.page", field: "page", authenticated: true)
    }

    public func search(_ request: ResourceSearchRequest, options: RequestOptions = .init()) async throws -> ResourceSearchPage {
        try await client.request(method: "POST", path: "/payouts/search", body: request, options: options, operation: "payouts.search", field: "search", authenticated: true)
    }

    /// Cancel a scheduled payout
    public func cancel(_ request: CancelPayoutRequest, options: RequestOptions = .init()) async throws -> Payout {
        try await client.request(method: "POST", path: "/payouts/cancel", body: request, options: options, operation: "payouts.cancel", field: "payout", authenticated: true)
    }

}

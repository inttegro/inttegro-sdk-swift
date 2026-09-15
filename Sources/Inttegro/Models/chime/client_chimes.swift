// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro chimes.
public struct Chimes: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Send a Chime
    public func send(_ request: SendChimeRequest, options: RequestOptions = .init()) async throws -> Chime {
        try await client.request(method: "POST", path: "/chimes/send", body: request, options: options, operation: "chimes.send", field: "chime", authenticated: true)
    }

    /// Look up a Chime
    public func lookup(_ request: LookupChimeRequest, options: RequestOptions = .init()) async throws -> Chime {
        try await client.request(method: "POST", path: "/chimes/lookup", body: request, options: options, operation: "chimes.lookup", field: "chime", authenticated: true)
    }

    /// Page through Chimes
    public func page(_ request: PageChimesRequest, options: RequestOptions = .init()) async throws -> ChimePage {
        try await client.request(method: "POST", path: "/chimes/page", body: request, options: options, operation: "chimes.page", field: "page", authenticated: true)
    }

    /// Schedule Chimes
    public func schedule(_ request: ScheduleChimeRequest, options: RequestOptions = .init()) async throws -> ScheduleCreationDetail {
        try await client.request(method: "POST", path: "/chimes/schedule", body: request, options: options, operation: "chimes.schedule", field: "scheduled_chime", authenticated: true)
    }

    /// Broadcast Chimes
    public func broadcast(_ request: BroadcastRequest, options: RequestOptions = .init()) async throws -> BroadcastCreationDetail {
        try await client.request(method: "POST", path: "/chimes/broadcast", body: request, options: options, operation: "chimes.broadcast", field: "broadcast", authenticated: true)
    }

}

// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro schedules.
public struct Schedules: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Look up a scheduled Chime
    public func lookup(_ request: LookupScheduleRequest, options: RequestOptions = .init()) async throws -> ScheduleDetail {
        try await client.request(method: "POST", path: "/schedules/lookup", body: request, options: options, operation: "schedules.lookup", field: "scheduled_chime", authenticated: true)
    }

    /// Cancel a scheduled Chime
    public func cancel(_ request: CancelScheduleRequest, options: RequestOptions = .init()) async throws -> ScheduleCancelDetail {
        try await client.request(method: "POST", path: "/schedules/cancel", body: request, options: options, operation: "schedules.cancel", field: "scheduled_chime", authenticated: true)
    }

}

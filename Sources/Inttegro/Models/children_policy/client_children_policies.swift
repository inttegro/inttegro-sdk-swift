import Foundation

public struct ChildrenPolicies: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    public func lookup(options: RequestOptions = .init()) async throws -> ChildrenPolicy {
        try await client.request(
            method: "POST",
            path: "/children_policies/lookup",
            body: EmptyBody(),
            options: options,
            operation: "children_policies.lookup",
            field: "children_policy",
            authenticated: true
        )
    }
}

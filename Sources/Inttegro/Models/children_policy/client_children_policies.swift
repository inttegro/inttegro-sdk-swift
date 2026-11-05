import Foundation

public struct ChildrenPolicies: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Retrieve the latest active version, or an exact version when supplied.
    public func lookup(version: Int? = nil, options: RequestOptions = .init()) async throws -> ChildrenPolicy {
        if let version, version < 1 {
            throw InttegroError.configuration("version must be at least 1")
        }
        return try await client.request(
            method: "POST",
            path: "/children_policies/lookup",
            body: LookupChildrenPolicyRequest(version: version),
            options: options,
            operation: "children_policies.lookup",
            field: "children_policy",
            authenticated: true
        )
    }

    /// List immutable children-policy versions, newest first.
    public func page(_ request: PageChildrenPoliciesRequest = .init(), options: RequestOptions = .init()) async throws -> ChildrenPolicyPage {
        try await client.request(
            method: "POST",
            path: "/children_policies/page",
            body: request,
            options: options,
            operation: "children_policies.page",
            field: "page",
            authenticated: true
        )
    }
}

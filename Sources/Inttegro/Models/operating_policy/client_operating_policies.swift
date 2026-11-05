import Foundation

public struct OperatingPolicies: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    public func create(_ request: CreateOperatingPolicyRequest, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        try await client.request(method: "POST", path: "/operating_policies/create", body: request, options: options, operation: "operating_policies.create", field: "operating_policy", authenticated: true)
    }

    /// Retrieve the latest active version, or an exact version when supplied.
    public func lookup(_ operatingPolicyId: String, version: Int? = nil, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        guard !operatingPolicyId.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw InttegroError.configuration("operatingPolicyId is required")
        }
        if let version, version < 1 {
            throw InttegroError.configuration("version must be at least 1")
        }
        return try await client.request(method: "POST", path: "/operating_policies/lookup", body: LookupOperatingPolicyRequest(operatingPolicyId: operatingPolicyId, version: version), options: options, operation: "operating_policies.lookup", field: "operating_policy", authenticated: true)
    }

    /// List immutable versions of one operating policy, newest first.
    public func page(_ request: PageOperatingPoliciesRequest, options: RequestOptions = .init()) async throws -> OperatingPolicyPage {
        guard !request.operatingPolicyId.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw InttegroError.configuration("operatingPolicyId is required")
        }
        return try await client.request(method: "POST", path: "/operating_policies/page", body: request, options: options, operation: "operating_policies.page", field: "page", authenticated: true)
    }

    public func update(_ request: UpdateOperatingPolicyRequest, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        try await client.request(method: "POST", path: "/operating_policies/update", body: request, options: options, operation: "operating_policies.update", field: "operating_policy", authenticated: true)
    }
}

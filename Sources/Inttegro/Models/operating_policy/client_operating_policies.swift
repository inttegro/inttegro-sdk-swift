import Foundation

public struct OperatingPolicies: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    public func create(_ request: CreateOperatingPolicyRequest, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        try await client.request(method: "POST", path: "/operating_policies/create", body: request, options: options, operation: "operating_policies.create", field: "operating_policy", authenticated: true)
    }

    public func lookup(_ operatingPolicyId: String, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        try await client.request(method: "POST", path: "/operating_policies/lookup", body: LookupOperatingPolicyRequest(operatingPolicyId: operatingPolicyId), options: options, operation: "operating_policies.lookup", field: "operating_policy", authenticated: true)
    }

    public func update(_ request: UpdateOperatingPolicyRequest, options: RequestOptions = .init()) async throws -> OperatingPolicy {
        try await client.request(method: "POST", path: "/operating_policies/update", body: request, options: options, operation: "operating_policies.update", field: "operating_policy", authenticated: true)
    }
}

// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro keys.
public struct Keys: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Generate a secret key
    public func generate(_ request: GenerateSecretKeyRequest, options: RequestOptions = .init()) async throws -> GeneratedSecretKey {
        try await client.request(method: "POST", path: "/keys/generate", body: request, options: options, operation: "keys.generate", field: "key", authenticated: true)
    }

    /// Page secret keys
    public func page(_ request: PageSecretKeysRequest, options: RequestOptions = .init()) async throws -> SecretKeyPage {
        try await client.request(method: "POST", path: "/keys/page", body: request, options: options, operation: "keys.page", field: "page", authenticated: true)
    }

    /// Retrieve a secret key
    public func lookup(_ request: LookupSecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/lookup", body: request, options: options, operation: "keys.lookup", field: "key", authenticated: true)
    }

    /// Update a secret key
    public func update(_ request: UpdateSecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/update", body: request, options: options, operation: "keys.update", field: "key", authenticated: true)
    }

    /// Revoke a secret key
    public func destroy(_ request: DestroySecretKeyRequest, options: RequestOptions = .init()) async throws -> SecretKey {
        try await client.request(method: "POST", path: "/keys/destroy", body: request, options: options, operation: "keys.destroy", field: "key", authenticated: true)
    }

    /// Retrieve secret key usage
    public func usage(_ request: SecretKeyUsageRequest, options: RequestOptions = .init()) async throws -> SecretKeyUsage {
        try await client.request(method: "POST", path: "/keys/usage", body: request, options: options, operation: "keys.usage", field: nil, authenticated: true)
    }

}

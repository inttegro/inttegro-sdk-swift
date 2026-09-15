// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro specifications.
public struct Specifications: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Get country specifications
    public func countries(options: RequestOptions = .init()) async throws -> CountrySpecifications {
        try await client.request(method: "POST", path: "/spec/countries", body: EmptyBody(), options: options, operation: "specifications.countries", field: "countries", authenticated: false)
    }

}

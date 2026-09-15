// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro file links.
public struct FileLinks: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a file link
    public func create(_ request: CreateFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLinkCreation {
        try await client.request(method: "POST", path: "/file_links/create", body: request, options: options, operation: "file_links.create", field: nil, authenticated: true)
    }

    /// Lookup a file link
    public func lookup(_ request: LookupFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLink {
        try await client.request(method: "POST", path: "/file_links/lookup", body: request, options: options, operation: "file_links.lookup", field: "file_link", authenticated: true)
    }

    /// Page file links
    public func page(_ request: PageFileLinksRequest, options: RequestOptions = .init()) async throws -> FileLinkPage {
        try await client.request(method: "POST", path: "/file_links/page", body: request, options: options, operation: "file_links.page", field: "page", authenticated: true)
    }

    /// Revoke a file link
    public func revoke(_ request: RevokeFileLinkRequest, options: RequestOptions = .init()) async throws -> FileLink {
        try await client.request(method: "POST", path: "/file_links/revoke", body: request, options: options, operation: "file_links.revoke", field: "file_link", authenticated: true)
    }

    /// Open a public file link
    public func `open`(_ request: OpenFileLinkRequest) async throws -> FileDownload {
        try await client.openFileLink(path: "/file_links/open", request: request, operation: "file_links.open")
    }

}

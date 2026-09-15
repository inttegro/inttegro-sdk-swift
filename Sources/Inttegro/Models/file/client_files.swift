// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro files.
public struct Files: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a file
    public func create(_ request: CreateFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.uploadFile(path: "/files/create", request: request, options: options, operation: "files.create", field: "file")
    }

    /// Lookup a file
    public func lookup(_ request: LookupFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.request(method: "POST", path: "/files/lookup", body: request, options: options, operation: "files.lookup", field: "file", authenticated: true)
    }

    /// Page files
    public func page(_ request: PageFilesRequest, options: RequestOptions = .init()) async throws -> FilePage {
        try await client.request(method: "POST", path: "/files/page", body: request, options: options, operation: "files.page", field: "page", authenticated: true)
    }

    /// Deliver file contents
    public func contents(_ request: FileContentsRequest, options: RequestOptions = .init()) async throws -> FileDownload {
        try await client.download(method: "POST", path: "/files/contents", body: request, options: options, operation: "files.contents", authenticated: true)
    }

    /// Delete a file
    public func delete(_ request: DeleteFileRequest, options: RequestOptions = .init()) async throws -> File {
        try await client.request(method: "POST", path: "/files/delete", body: request, options: options, operation: "files.delete", field: "file", authenticated: true)
    }

}

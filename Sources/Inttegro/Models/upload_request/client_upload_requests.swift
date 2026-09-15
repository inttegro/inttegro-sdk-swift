// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro upload requests.
public struct UploadRequests: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create an upload request
    public func create(_ request: CreateUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/create", body: request, options: options, operation: "upload_requests.create", field: "upload_request", authenticated: true)
    }

    /// Lookup an upload request
    public func lookup(_ request: LookupUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/lookup", body: request, options: options, operation: "upload_requests.lookup", field: "upload_request", authenticated: true)
    }

    /// Page upload requests
    public func page(_ request: PageUploadRequestsRequest, options: RequestOptions = .init()) async throws -> UploadRequestPage {
        try await client.request(method: "POST", path: "/upload_requests/page", body: request, options: options, operation: "upload_requests.page", field: "page", authenticated: true)
    }

    /// Cancel an upload request
    public func cancel(_ request: CancelUploadRequestRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/cancel", body: request, options: options, operation: "upload_requests.cancel", field: "upload_request", authenticated: true)
    }

    /// Review an upload request attempt
    public func review(_ request: ReviewUploadRequestAttemptRequest, options: RequestOptions = .init()) async throws -> UploadRequest {
        try await client.request(method: "POST", path: "/upload_requests/review", body: request, options: options, operation: "upload_requests.review", field: "upload_request", authenticated: true)
    }

    /// Fulfill an upload request
    public func fulfill(_ request: FulfillUploadRequest, options: RequestOptions = .init()) async throws -> UploadFulfillment {
        try await client.fulfillUpload(path: "/upload_requests/upload", request: request, options: options, operation: "upload_requests.fulfill")
    }

}

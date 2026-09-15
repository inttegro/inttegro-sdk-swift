// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro file references.
public struct FileReferences: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Reconcile file references
    public func reconcile(_ request: FileReferenceReconcileRequest, options: RequestOptions = .init()) async throws -> FileReferenceReconciliation {
        try await client.request(method: "POST", path: "/file_references/reconcile", body: request, options: options, operation: "file_references.reconcile", field: nil, authenticated: true)
    }

}

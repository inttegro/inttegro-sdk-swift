// Typed Inttegro API resource operations.
import Foundation

/// Operations for Inttegro message templates.
public struct MessageTemplates: Sendable {
    private let client: Client
    init(client: Client) { self.client = client }

    /// Create a message template
    public func create(_ request: CreateMessageTemplateRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/create", body: request, options: options, operation: "message_templates.create", field: "message_template", authenticated: true)
    }

    /// Update a message template
    public func update(_ request: UpdateMessageTemplateRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/update", body: request, options: options, operation: "message_templates.update", field: "message_template", authenticated: true)
    }

    /// Publish a message template
    public func publish(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/publish", body: request, options: options, operation: "message_templates.publish", field: "message_template", authenticated: true)
    }

    /// Archive a message template
    public func archive(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/archive", body: request, options: options, operation: "message_templates.archive", field: "message_template", authenticated: true)
    }

    /// Look up a message template
    public func lookup(_ request: MessageTemplateIDRequest, options: RequestOptions = .init()) async throws -> MessageTemplate {
        try await client.request(method: "POST", path: "/message_templates/lookup", body: request, options: options, operation: "message_templates.lookup", field: "message_template", authenticated: true)
    }

    /// Page message templates
    public func page(_ request: PageMessageTemplatesRequest, options: RequestOptions = .init()) async throws -> MessageTemplatesPage {
        try await client.request(method: "POST", path: "/message_templates/page", body: request, options: options, operation: "message_templates.page", field: "page", authenticated: true)
    }

    /// Render a message template preview
    public func renderPreview(_ request: RenderMessageTemplatePreviewRequest, options: RequestOptions = .init()) async throws -> MessageTemplatePreview {
        try await client.request(method: "POST", path: "/message_templates/render_preview", body: request, options: options, operation: "message_templates.render_preview", field: nil, authenticated: true)
    }

}

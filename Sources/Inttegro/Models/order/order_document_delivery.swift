// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderDocumentDelivery: Codable, Sendable, Equatable {
    public var deliveries: [OrderDocumentDeliveryAttempt]?
    public var documentKind: OrderDocumentKind?
    public var documentUrl: String?
    public var failedChannels: [String]?
    public var failures: [OrderDocumentDeliveryFailure]?
    public var sentChannels: [String]?

    public init(
        deliveries: [OrderDocumentDeliveryAttempt]? = nil,
        documentKind: OrderDocumentKind? = nil,
        documentUrl: String? = nil,
        failedChannels: [String]? = nil,
        failures: [OrderDocumentDeliveryFailure]? = nil,
        sentChannels: [String]? = nil
    ) {
        self.deliveries = deliveries
        self.documentKind = documentKind
        self.documentUrl = documentUrl
        self.failedChannels = failedChannels
        self.failures = failures
        self.sentChannels = sentChannels
    }

    private enum CodingKeys: String, CodingKey {
        case deliveries
        case documentKind = "document_kind"
        case documentUrl = "document_url"
        case failedChannels = "failed_channels"
        case failures
        case sentChannels = "sent_channels"
    }
}

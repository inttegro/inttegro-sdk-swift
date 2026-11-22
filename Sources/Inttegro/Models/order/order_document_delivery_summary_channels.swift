// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Accepted delivery totals grouped by channel.
public struct OrderDocumentDeliverySummaryChannels: Codable, Sendable, Equatable {
  public var email: OrderDocumentDeliveryChannelSummary?
  public var sms: OrderDocumentDeliveryChannelSummary?

  public init(
    email: OrderDocumentDeliveryChannelSummary? = nil,
    sms: OrderDocumentDeliveryChannelSummary? = nil
  ) {
    self.email = email
    self.sms = sms
  }
}

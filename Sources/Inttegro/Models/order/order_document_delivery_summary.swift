// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Accepted invoice or receipt deliveries aggregated across channels.
public struct OrderDocumentDeliverySummary: Codable, Sendable, Equatable {
  public var channels: OrderDocumentDeliverySummaryChannels
  public var latestSentAt: Date
  public var totalCount: Int64

  public init(
    channels: OrderDocumentDeliverySummaryChannels,
    latestSentAt: Date,
    totalCount: Int64
  ) {
    self.channels = channels
    self.latestSentAt = latestSentAt
    self.totalCount = totalCount
  }

  private enum CodingKeys: String, CodingKey {
    case channels
    case latestSentAt = "latest_sent_at"
    case totalCount = "total_count"
  }
}

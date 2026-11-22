// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Accepted deliveries aggregated for one channel.
public struct OrderDocumentDeliveryChannelSummary: Codable, Sendable, Equatable {
  public var count: Int64
  public var latestSentAt: Date

  public init(count: Int64, latestSentAt: Date) {
    self.count = count
    self.latestSentAt = latestSentAt
  }

  private enum CodingKeys: String, CodingKey {
    case count
    case latestSentAt = "latest_sent_at"
  }
}

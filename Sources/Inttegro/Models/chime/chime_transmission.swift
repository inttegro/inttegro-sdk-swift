import Foundation

/// Public delivery lifecycle for a Chime.
///
/// Swift's `Codable` decoder ignores undeclared response fields.
public struct ChimeTransmission: Codable, Sendable, Equatable {
  public var address: String
  public var createdAt: Date
  public var deliveredAt: Date?
  public var failedAt: Date?
  public var initializedAt: Date
  public var mechanism: ChimeTransport
  public var sentAt: Date?
  public var sentVia: ChimeTransport?
  public var status: String
  public var suppressedAt: Date?

  public init(
    address: String,
    createdAt: Date,
    deliveredAt: Date? = nil,
    failedAt: Date? = nil,
    initializedAt: Date,
    mechanism: ChimeTransport,
    sentAt: Date? = nil,
    sentVia: ChimeTransport? = nil,
    status: String,
    suppressedAt: Date? = nil
  ) {
    self.address = address
    self.createdAt = createdAt
    self.deliveredAt = deliveredAt
    self.failedAt = failedAt
    self.initializedAt = initializedAt
    self.mechanism = mechanism
    self.sentAt = sentAt
    self.sentVia = sentVia
    self.status = status
    self.suppressedAt = suppressedAt
  }

  private enum CodingKeys: String, CodingKey {
    case address
    case createdAt = "created_at"
    case deliveredAt = "delivered_at"
    case failedAt = "failed_at"
    case initializedAt = "initialized_at"
    case mechanism
    case sentAt = "sent_at"
    case sentVia = "sent_via"
    case status
    case suppressedAt = "suppressed_at"
  }
}

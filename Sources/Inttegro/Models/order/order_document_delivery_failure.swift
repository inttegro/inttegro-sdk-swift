// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct OrderDocumentDeliveryFailure: Codable, Sendable, Equatable {
  public var channel: DeliveryChannel?

  public init(
    channel: DeliveryChannel? = nil
  ) {
    self.channel = channel
  }
}

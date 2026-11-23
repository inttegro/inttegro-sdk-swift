// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Effective SMS sender defaults and public sender-length limits.
public struct ChimeSMSSettings: Codable, Sendable, Equatable {
  public var defaultSender: String
  public var minSenderCharLen: Int
  public var maxSenderCharLen: Int

  public init(defaultSender: String, minSenderCharLen: Int, maxSenderCharLen: Int) {
    self.defaultSender = defaultSender
    self.minSenderCharLen = minSenderCharLen
    self.maxSenderCharLen = maxSenderCharLen
  }

  private enum CodingKeys: String, CodingKey {
    case defaultSender = "default_sender"
    case minSenderCharLen = "min_sender_char_len"
    case maxSenderCharLen = "max_sender_char_len"
  }
}

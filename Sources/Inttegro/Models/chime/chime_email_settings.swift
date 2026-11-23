// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Effective email sender defaults and authorized From addresses.
public struct ChimeEmailSettings: Codable, Sendable, Equatable {
  public var defaultFrom: String
  public var allowedFrom: [String]

  public init(defaultFrom: String, allowedFrom: [String]) {
    self.defaultFrom = defaultFrom
    self.allowedFrom = allowedFrom
  }

  private enum CodingKeys: String, CodingKey {
    case defaultFrom = "default_from"
    case allowedFrom = "allowed_from"
  }
}

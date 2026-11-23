// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Effective, non-secret delivery settings used by Chimes.
public struct ChimeSettings: Codable, Sendable, Equatable {
  public var sms: ChimeSMSSettings
  public var email: ChimeEmailSettings

  public init(sms: ChimeSMSSettings, email: ChimeEmailSettings) {
    self.sms = sms
    self.email = email
  }
}

// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant2: Codable, Sendable, Equatable {
    public var name: String?
    public var email: ChimeInlineRecipientInputVariant2Email
    public var type: ChimeRecipientType

    public init(
        name: String? = nil,
        email: ChimeInlineRecipientInputVariant2Email,
        type: ChimeRecipientType
    ) {
        self.name = name
        self.email = email
        self.type = type
    }
}

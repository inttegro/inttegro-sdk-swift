// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct ChimeInlineRecipientInputVariant1: Codable, Sendable, Equatable {
    public var name: String?
    public var phone: ChimeInlineRecipientInputVariant1Phone
    public var type: ChimeRecipientType

    public init(
        name: String? = nil,
        phone: ChimeInlineRecipientInputVariant1Phone,
        type: ChimeRecipientType
    ) {
        self.name = name
        self.phone = phone
        self.type = type
    }
}

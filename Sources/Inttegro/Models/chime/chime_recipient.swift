// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro domain value.
public struct ChimeRecipient: Codable, Sendable, Equatable {
    public var type: ChimeRecipientType
    public var name: String?
    public var phone: ChimeRecipientPhone?
    public var email: ChimeRecipientEmail?

    public init(
        type: ChimeRecipientType,
        name: String? = nil,
        phone: ChimeRecipientPhone? = nil,
        email: ChimeRecipientEmail? = nil
    ) {
        self.type = type
        self.name = name
        self.phone = phone
        self.email = email
    }
}

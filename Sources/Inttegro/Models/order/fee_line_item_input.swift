// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct FeeLineItemInput: Codable, Sendable, Equatable {
    public var type: LineItemType
    public var fee: FeeDetailsInput

    public init(
        type: LineItemType,
        fee: FeeDetailsInput
    ) {
        self.type = type
        self.fee = fee
    }
}

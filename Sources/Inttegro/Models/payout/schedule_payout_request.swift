// Generated typed Inttegro domain or request value. Do not edit manually.
import Foundation

/// Typed Inttegro request parameters.
public struct SchedulePayoutRequest: Codable, Sendable, Equatable {
    public var executeAfter: Date?
    public var maxAmount: Int?
    public var destinationId: String
    public var reference: String

    public init(
        executeAfter: Date? = nil,
        maxAmount: Int? = nil,
        destinationId: String,
        reference: String
    ) {
        self.executeAfter = executeAfter
        self.maxAmount = maxAmount
        self.destinationId = destinationId
        self.reference = reference
    }

    private enum CodingKeys: String, CodingKey {
        case executeAfter = "execute_after"
        case maxAmount = "max_amount"
        case destinationId = "destination_id"
        case reference
    }
}

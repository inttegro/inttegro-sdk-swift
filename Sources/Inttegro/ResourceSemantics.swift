import Foundation

public extension Payment {
    /// Whether the payment completed successfully.
    var isPaid: Bool { status == .paid }

    /// Whether the payment is waiting for customer or merchant action.
    var requiresAction: Bool { status == .requiresAction }

    /// Whether the payment has reached a final state.
    var isTerminal: Bool {
        status == .paid || status == .canceled || status == .expired || status == .failed
    }

    /// Action details when the payment currently requires action.
    var requiredAction: PaymentNextAction? { requiresAction ? nextAction : nil }
}

public extension Order {
    /// Whether the order has recorded payment, including a subsequently completed order.
    var isPaid: Bool { status == .paid || paidAt != nil }

    /// Whether the order is waiting for payment.
    var requiresPayment: Bool { status == .requiresPayment }

    /// Whether the order has reached a final state.
    var isTerminal: Bool {
        status == .paid || status == .completed || status == .canceled || status == .expired
    }

    /// Nested payment action details, when the order's payment requires action.
    var requiredPaymentAction: PaymentNextAction? { payment?.requiredAction }
}

public extension PurchaseIntent {
    /// Whether the purchase intent is currently active.
    var isActive: Bool { status == .active }

    /// Whether the purchase intent can create at most one order.
    var isSingleUse: Bool { usage.singleUse == true }

    /// ID of the order that consumed a single-use purchase intent.
    var usedOrderID: String? {
        guard isSingleUse, let id = usage.order?.id, !id.isEmpty else { return nil }
        return id
    }
}

public extension Product {
    /// Whether the product is archived.
    var isArchived: Bool { archivedAt != nil }

    /// Whether the product is currently published and available.
    var isPublished: Bool { active && !isArchived }

    /// Whether the product has a recorded first publication.
    var wasEverPublished: Bool { publishedAt != nil }
}

public extension PaymentMethod {
    /// Whether the payment method is archived.
    var isArchived: Bool { archivedAt != nil }

    /// Whether payment-method ownership has been verified.
    var isVerified: Bool { verifiedAt != nil }

    /// Whether the payment method may be reused in new payment flows.
    var isReusable: Bool { active && !isArchived && ephemeral != true }
}

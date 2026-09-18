import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import XCTest
@testable import Inttegro

final class PublicAPITests: XCTestCase {
    func testCustomDataControlsMutationAndPatchRemoval() throws {
        var data = try CustomData(["campaign": "launch"])
        try data.set("vip", for: "segment")
        var patch = CustomDataPatch()
        try patch.unset("legacy")

        XCTAssertEqual(data["segment"], "vip")
        XCTAssertEqual(patch["legacy"], .null)
        XCTAssertThrowsError(try data.set("value", for: String(repeating: "x", count: 257)))
    }

    func testClientExposesTypedResources() throws {
        let client = try Client(apiKey: "sk_test_example")
        _ = client.orders
        _ = client.financialAccounts
        let amount = AmountParams(currency: .ghs, value: 5_000)
        XCTAssertEqual(amount.value, 5_000)
    }

    func testBalanceSnapshotExposesGHSStatically() throws {
        let data = Data(#"{"ghs":{"available":{"amount":1000},"includes_transactions_before":"2026-09-09T12:00:00Z","pending":{"amount":200},"refund":{"amount":50},"reserved":{"amount":100}}}"#.utf8)
        let balance = try JSONDecoder.inttegro.decode(BalanceSnapshot.self, from: data)

        XCTAssertEqual(balance.ghs.available.amount, 1_000)
        XCTAssertEqual(
            balance.ghs.includesTransactionsBefore,
            ISO8601DateFormatter().date(from: "2026-09-09T12:00:00Z")
        )
        let encoded = try JSONSerialization.jsonObject(with: JSONEncoder.inttegro.encode(balance)) as! [String: Any]
        XCTAssertEqual(
            (encoded["ghs"] as! [String: Any])["includes_transactions_before"] as? String,
            "2026-09-09T12:00:00.000Z"
        )
    }

    func testPurchaseIntentExposesNestedResponseTypes() throws {
        let data = Data(#"{"allow_variants":false,"created_at":"2026-09-09T12:00:00Z","id":"sale_123","merchant":{"organization_name":"Tea House Ltd"},"product":{"active":true,"created_at":"2026-09-09T11:00:00Z","dimensions":{"digital":{"bytes":1024}},"id":"prod_123","name":"Tea guide","type":"digital"},"quantity":{"min":1},"status":"active","usage":{"order":{"created_at":"2026-09-09T12:02:00Z","id":"or_123"},"single_use":true}}"#.utf8)
        let intent = try JSONDecoder.inttegro.decode(PurchaseIntent.self, from: data)

        XCTAssertEqual(intent.merchant?.organizationName, "Tea House Ltd")
        XCTAssertEqual(intent.product?.dimensions?.digital?.bytes, 1_024)
        XCTAssertEqual(intent.usage.order?.id, "or_123")
        XCTAssertTrue(intent.isSingleUse)
        XCTAssertEqual(intent.usedOrderID, "or_123")
    }

    func testPayoutSettingsExposeKnownDestinationsStatically() throws {
        let data = Data(#"{"destinations":{"ghs":"fa_123"},"fx_enabled":true,"id":"settings_123"}"#.utf8)
        let settings = try JSONDecoder.inttegro.decode(PayoutSettingsMutation.self, from: data)

        XCTAssertEqual(settings.destinations?.ghs, "fa_123")
        XCTAssertEqual(settings.fxEnabled, true)
    }

    func testRefundSettlementUsesTheDiscriminatorAndMaskedSnapshot() throws {
        let data = Data(#"{"created_at":"2026-09-09T12:00:00Z","id":"rf_123","line_items":[{"id":"rli_123","order_line_item_id":"oli_123","order_line_item":{"id":"oli_123","type":"product","quantity":2,"product":{"id":"prod_123","name":"Premium subscription"}},"original_amount_paid":{"currency":"ghs","value":2000},"refund_amount":{"currency":"ghs","value":1000}}],"order_id":"or_123","reason":"requested_by_customer","settlement":{"type":"payment_method","payment_method":{"id":"pm_123","type":"bank_account","bank_account":{"type":"ghana_bank_account","ghana_bank_account":{"account_number":"****1234","last4":"1234"}}}},"status":"pending","total":{"currency":"ghs","value":1000}}"#.utf8)
        let refund = try JSONDecoder.inttegro.decode(Refund.self, from: data)

        guard case .paymentMethod(let paymentMethod) = refund.settlement,
              case .bankAccount(_, let bankAccount) = paymentMethod,
              case .ghanaBankAccount(let ghanaBankAccount) = bankAccount else {
            return XCTFail("Expected a bank-account payment-method settlement")
        }
        XCTAssertEqual(ghanaBankAccount.accountNumber, "****1234")
        guard case .product(_, let quantity, let product) = refund.lineItems[0].orderLineItem else {
            return XCTFail("Expected a product order-line snapshot")
        }
        XCTAssertEqual(quantity, 2)
        XCTAssertEqual(product.id, "prod_123")

        let invalidOffline = Data(#"{"type":"offline","payment_method":{"id":"pm_123","type":"mobile_money"}}"#.utf8)
        XCTAssertThrowsError(try JSONDecoder.inttegro.decode(RefundSettlement.self, from: invalidOffline))
        let missingMethod = Data(#"{"type":"payment_method"}"#.utf8)
        XCTAssertThrowsError(try JSONDecoder.inttegro.decode(RefundSettlement.self, from: missingMethod))
    }

    func testResourceSemanticsAnswerLocalQuestions() throws {
        let paymentData = Data(#"{"amount":{"currency":"ghs","value":1000},"id":"py_123","initiated_at":"2026-09-09T12:00:00Z","next_action":{"type":"redirect"},"statement_descriptor":"INTTEGRO","status":"requires_action"}"#.utf8)
        let payment = try JSONDecoder.inttegro.decode(Payment.self, from: paymentData)
        XCTAssertTrue(payment.requiresAction)
        XCTAssertFalse(payment.isTerminal)
        XCTAssertEqual(payment.requiredAction?.type, .redirect)

        let productData = Data(#"{"active":true,"created_at":"2026-09-09T12:00:00Z","id":"prod_123","name":"Tea guide","published_at":"2026-09-09T12:00:00Z","type":"digital"}"#.utf8)
        let product = try JSONDecoder.inttegro.decode(Product.self, from: productData)
        XCTAssertTrue(product.isPublished)
        XCTAssertTrue(product.wasEverPublished)

        let methodData = Data(#"{"active":true,"created_at":"2026-09-09T12:00:00Z","customer_id":"cu_123","fingerprint":"fp_123","id":"pm_123","type":"mobile_money","verified_at":"2026-09-09T12:00:00Z"}"#.utf8)
        let method = try JSONDecoder.inttegro.decode(PaymentMethod.self, from: methodData)
        XCTAssertTrue(method.isVerified)
        XCTAssertTrue(method.isReusable)
    }

    func testWireEnvelopeIsUnwrappedIntoDomainValue() async throws {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        let session = URLSession(configuration: configuration)
        let client = try Client(apiKey: "sk_test_example", session: session)
        let app = try await client.apps.lookup()
        XCTAssertEqual(app.id, "app_test")
    }
}

private final class MockURLProtocol: URLProtocol, @unchecked Sendable {
    override class func canInit(with request: URLRequest) -> Bool { true }
    override class func canonicalRequest(for request: URLRequest) -> URLRequest { request }
    override func startLoading() {
        let body = Data(#"{"app":{"id":"app_test","name":"Test","created_at":"2026-09-07T00:00:00Z"}}"#.utf8)
        let response = HTTPURLResponse(url: request.url!, statusCode: 200, httpVersion: nil, headerFields: ["Content-Type": "application/json"])!
        client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
        client?.urlProtocol(self, didLoad: body)
        client?.urlProtocolDidFinishLoading(self)
    }
    override func stopLoading() {}
}

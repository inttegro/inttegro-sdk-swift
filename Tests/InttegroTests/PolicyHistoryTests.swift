import Foundation
import XCTest
@testable import Inttegro

final class PolicyHistoryTests: XCTestCase {
    func testLookupRequestsOmitOrSerializeExactVersion() throws {
        XCTAssertTrue(try jsonObject(LookupChildrenPolicyRequest()).isEmpty)
        XCTAssertEqual(
            try jsonObject(LookupChildrenPolicyRequest(version: 2))["version"] as? Int,
            2
        )

        let latest = try jsonObject(LookupOperatingPolicyRequest(operatingPolicyId: "op_1"))
        XCTAssertEqual(latest["operating_policy_id"] as? String, "op_1")
        XCTAssertNil(latest["version"])

        let exact = try jsonObject(
            LookupOperatingPolicyRequest(operatingPolicyId: "op_1", version: 3)
        )
        XCTAssertEqual(exact["version"] as? Int, 3)
    }

    func testPageRequestsSerializeAndResponsesDecodeVersions() throws {
        XCTAssertEqual(
            try jsonObject(PageChildrenPoliciesRequest(number: 0, size: 20))["size"] as? Int,
            20
        )
        let operatingRequest = try jsonObject(
            PageOperatingPoliciesRequest(operatingPolicyId: "op_1", size: 10)
        )
        XCTAssertEqual(operatingRequest["operating_policy_id"] as? String, "op_1")
        XCTAssertEqual(operatingRequest["size"] as? Int, 10)
        XCTAssertNil(operatingRequest["number"])

        let childrenPage = try JSONDecoder.inttegro.decode(
            ChildrenPolicyPage.self,
            from: Data(childrenPageJSON.utf8)
        )
        let operatingPage = try JSONDecoder.inttegro.decode(
            OperatingPolicyPage.self,
            from: Data(operatingPageJSON.utf8)
        )

        XCTAssertEqual(childrenPage.versions.first?.version, 2)
        XCTAssertTrue(childrenPage.hasMore)
        XCTAssertEqual(operatingPage.versions.first?.id, "op_1")
        XCTAssertFalse(operatingPage.hasMore)
    }

    func testLookupRejectsNonPositiveVersion() async throws {
        let client = try Client(apiKey: "sk_test_example")
        do {
            _ = try await client.childrenPolicies.lookup(version: 0)
            XCTFail("Expected invalid version to throw")
        } catch InttegroError.configuration(let message) {
            XCTAssertEqual(message, "version must be at least 1")
        }
    }

    func testPolicyAgingSpecsExposePublicId() throws {
        let childrenData = Data(#"{"public_id":"bt_aging_spec_immediate","t_plus":"0h"}"#.utf8)
        let operatingData = Data(#"{"public_id":"bt_aging_spec_168_hourly","t_plus":"168h"}"#.utf8)

        let children = try JSONDecoder.inttegro.decode(ChildrenPolicyBTAgingSpec.self, from: childrenData)
        let operating = try JSONDecoder.inttegro.decode(OperatingPolicyBTAgingSpec.self, from: operatingData)

        XCTAssertEqual(children.publicId, "bt_aging_spec_immediate")
        XCTAssertEqual(operating.publicId, "bt_aging_spec_168_hourly")
    }

    private func jsonObject<T: Encodable>(_ value: T) throws -> [String: Any] {
        try JSONSerialization.jsonObject(with: JSONEncoder.inttegro.encode(value)) as! [String: Any]
    }

    private let childrenPageJSON = #"{"number":0,"size":20,"count":1,"total":2,"has_more":true,"versions":[{"id":"cp_1","version":2,"active_version":2,"name":"Default","capabilities":{},"created_at":"2026-11-05T10:00:00Z","updated_at":"2026-11-05T10:00:00Z","version_created_at":"2026-11-05T10:00:00Z"}]}"#

    private let operatingPageJSON = #"{"number":0,"size":20,"count":1,"total":1,"has_more":false,"versions":[{"id":"op_1","version":1,"active_version":1,"name":"Retail","capabilities":{},"children_policy_id":"cp_1","children_policy_version":1,"created_at":"2026-11-05T10:00:00Z","updated_at":"2026-11-05T10:00:00Z","version_created_at":"2026-11-05T10:00:00Z"}]}"#
}

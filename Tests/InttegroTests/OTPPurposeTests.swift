import Foundation
import XCTest
@testable import Inttegro

final class OTPPurposeTests: XCTestCase {
    func testPurposesPreserveClosedWireValues() throws {
        let data = try JSONEncoder().encode(OTPPurpose.signIn)

        XCTAssertEqual(String(decoding: data, as: UTF8.self), #""sign_in""#)
    }
}

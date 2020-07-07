import XCTest
@testable import AlgoBrain

final class LinkedListTests: XCTestCase {
    func testExample() {
        let list = LinkedList<String>()
        XCTAssertTrue(list.isEmpty)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

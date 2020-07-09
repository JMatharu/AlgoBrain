import XCTest
@testable import AlgoBrain

final class LinkedListTests: XCTestCase {
    func testLinkedList() {
        let list = LinkedList<String>()
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        
        XCTAssertTrue(list.insertAt(.start, with: "One"))
        XCTAssertTrue(list.insertAt(.start, with: "two"))
        XCTAssertEqual(list.count, 2)
    }
    
    func testInsertionAtStart() {
        let list = LinkedList<Int>()
        XCTAssertTrue(list.insertAt(.start, with: 1))
        XCTAssertTrue(list.insertAt(.start, with: 2))
        XCTAssertEqual(list.head?.description, "2 -> 1")
    }
    
    func testInsertionAtEnd() {
        let list = LinkedList<Int>()
        XCTAssertTrue(list.insertAt(.end, with: 0))
        XCTAssertTrue(list.insertAt(.end, with: 1))
        XCTAssertTrue(list.insertAt(.end, with: 2))
        XCTAssertEqual(list.head?.description, "0 -> 1 -> 2")
    }
    
    func testInsertionAtIndex() {
        let list = LinkedList<Int>()
        XCTAssertFalse(list.insertAt(.index(1), with: 1))
        XCTAssertNil(list.head?.description)
        XCTAssertTrue(list.insertAt(.index(0), with: 2))
        XCTAssertEqual(list.head?.description, "2")
        XCTAssertTrue(list.insertAt(.index(1), with: 3))
        XCTAssertEqual(list.head?.description, "2 -> 3")
        XCTAssertFalse(list.insertAt(.index(-1), with: -1))
        XCTAssertEqual(list.head?.description, "2 -> 3")
        XCTAssertFalse(list.insertAt(.index(100), with: 100))
        XCTAssertEqual(list.head?.description, "2 -> 3")
    }
    
    func testDeletionAtStart() {
        let list = LinkedList<Int>()
        XCTAssertFalse(list.removeFrom(.start))
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        XCTAssertTrue(list.removeFrom(.start))
        XCTAssertEqual(list.head?.description, "2 -> 3")
    }
    
    func testDeletionAtEnd() {
        let list = LinkedList<Int>()
        XCTAssertFalse(list.removeFrom(.end))
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        XCTAssertTrue(list.removeFrom(.end))
        XCTAssertEqual(list.head?.description, "1 -> 2")
        XCTAssertTrue(list.removeFrom(.end))
        XCTAssertEqual(list.head?.description, "1")
    }
    
    func testDeletionAtIndex() {
        let list = LinkedList<Int>()
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        _ = list.insertAt(.end, with: 4)
        XCTAssertTrue(list.removeFrom(.index(2)))
        XCTAssertEqual(list.head?.description, "1 -> 2 -> 4")
        XCTAssertTrue(list.removeFrom(.index(1)))
        XCTAssertEqual(list.head?.description, "1 -> 4")
    }
    
    func testReverse() {
        let list = LinkedList<Int>()
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        _ = list.insertAt(.end, with: 4)
        XCTAssertEqual(list.head?.description, "1 -> 2 -> 3 -> 4")
        list.reverse()
        XCTAssertEqual(list.head?.description, "4 -> 3 -> 2 -> 1.")
    }
}

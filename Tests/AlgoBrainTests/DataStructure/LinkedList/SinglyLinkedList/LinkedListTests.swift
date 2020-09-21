import XCTest
@testable import AlgoBrain

final class LinkedListTests: XCTestCase {
    func testLinkedList() {
        var list = LinkedList<String>()
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        
        XCTAssertTrue(list.insertAt(.start, with: "One"))
        XCTAssertTrue(list.insertAt(.start, with: "two"))
        XCTAssertEqual(list.count, 2)
    }
    
    func testInsertionAtStart() {
        var list = LinkedList<Int>()
        XCTAssertTrue(list.insertAt(.start, with: 1))
        XCTAssertTrue(list.insertAt(.start, with: 2))
        XCTAssertEqual(list.head?.description, "2 -> 1")
    }
    
    func testInsertionAtEnd() {
        var list = LinkedList<Int>()
        XCTAssertTrue(list.insertAt(.end, with: 0))
        XCTAssertTrue(list.insertAt(.end, with: 1))
        XCTAssertTrue(list.insertAt(.end, with: 2))
        XCTAssertEqual(list.head?.description, "0 -> 1 -> 2")
    }
    
    func testInsertionAtIndex() {
        var list = LinkedList<Int>()
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
        
        var linkedList = LinkedList<Int>()
        linkedList.insertAt(.end, with: 0)
        linkedList.insertAt(.start, with: 1)
        linkedList.insertAt(.start, with: 2)
        linkedList.insertAt(.start, with: 3)
        linkedList.insertAt(.index(2), with: 4)
        print(linkedList.head?.description as Any) // 3 -> 2 -> 4 -> 1 -> 0
        linkedList.removeAt(.start)
        linkedList.removeAt(.end)
        linkedList.removeAt(.index(2))
        print(linkedList.head?.description as Any) // 2 -> 4
        
        var list = LinkedList<Int>()
        XCTAssertFalse(list.removeAt(.start))
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        XCTAssertTrue(list.removeAt(.start))
        XCTAssertEqual(list.head?.description, "2 -> 3")
    }
    
    func testDeletionAtEnd() {
        var list = LinkedList<Int>()
        XCTAssertFalse(list.removeAt(.end))
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        XCTAssertTrue(list.removeAt(.end))
        XCTAssertEqual(list.head?.description, "1 -> 2")
        XCTAssertTrue(list.removeAt(.end))
        XCTAssertEqual(list.head?.description, "1")
    }
    
    func testDeletionAtIndex() {
        var list = LinkedList<Int>()
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        _ = list.insertAt(.end, with: 4)
        XCTAssertTrue(list.removeAt(.index(2)))
        XCTAssertEqual(list.head?.description, "1 -> 2 -> 4")
        XCTAssertTrue(list.removeAt(.index(1)))
        XCTAssertEqual(list.head?.description, "1 -> 4")
    }
    
    func testReverse() {
        var list = LinkedList<Int>()
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        _ = list.insertAt(.end, with: 3)
        _ = list.insertAt(.end, with: 4)
        XCTAssertEqual(list.head?.description, "1 -> 2 -> 3 -> 4")
        list.reverse()
        XCTAssertEqual(list.head?.description, "4 -> 3 -> 2 -> 1")
    }
}

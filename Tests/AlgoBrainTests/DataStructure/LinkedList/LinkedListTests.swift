import XCTest
@testable import AlgoBrain

final class LinkedListTests: XCTestCase {
    func testLinkedList() {
        let list = LinkedList<String>()
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        
        list.insertAt(.start, with: "One")
        list.insertAt(.start, with: "two")
        XCTAssertEqual(list.count, 2)
    }
    
    func testInsertionAtFirst() {
        let list = LinkedList<Int>()
        list.insertAt(.start, with: 1)
        list.insertAt(.start, with: 2)
        XCTAssertEqual(list.head?.description, "2 -> 1")
    }
    
    func testInsertionAtLast() {
        let list = LinkedList<Int>()
        list.insertAt(.end, with: 0)
        list.insertAt(.end, with: 1)
        list.insertAt(.end, with: 2)
        XCTAssertEqual(list.head?.description, "0 -> 1 -> 2")
    }
    
    func testInsertionAtIndex() {
        let list = LinkedList<Int>()
        list.insertAt(.index(1), with: 1)
        XCTAssertNil(list.head?.description)
        list.insertAt(.index(0), with: 2)
        XCTAssertEqual(list.head?.description, "2")
        list.insertAt(.index(1), with: 3)
        XCTAssertEqual(list.head?.description, "2 -> 3")
        list.insertAt(.index(-1), with: -1)
        XCTAssertEqual(list.head?.description, "2 -> 3")
        list.insertAt(.index(100), with: 100)
        XCTAssertEqual(list.head?.description, "2 -> 3")
    }
    
    func testDeletion() {
        
    }
    
    func testReverse() {
        
    }
}

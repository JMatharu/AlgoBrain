//
//  DoublyLinkedListTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-08.
//

import XCTest
@testable import AlgoBrain

final class DoublyLinkedListTests: XCTestCase {
    func testDoublyLinkedList() {
        let list = DoublyLinkedList<Int>()
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.count, 0)
        _ = list.insertAt(.start, with: 0)
        _ = list.insertAt(.start, with: 1)
        XCTAssertEqual(list.count, 2)
    }
    
    func testInsertAtStart() {
        let list = DoublyLinkedList<Int>()
        _ = list.insertAt(.start, with: 0)
        _ = list.insertAt(.start, with: 1)
        XCTAssertEqual(list.head?.description, "1 <-> 0")
    }
    
    func testInsertAtEnd() {
        let list = DoublyLinkedList<Int>()
        _ = list.insertAt(.end, with: 0)
        _ = list.insertAt(.end, with: 1)
        _ = list.insertAt(.end, with: 2)
        XCTAssertEqual(list.head?.description, "0 <-> 1 <-> 2")
    }
    
    func testInsertAtIndex() {
        let list = DoublyLinkedList<Int>()
        XCTAssertFalse(list.insertAt(.index(1), with: 1))
        XCTAssertNil(list.head?.description)
        XCTAssertTrue(list.insertAt(.index(0), with: 2))
        XCTAssertEqual(list.head?.description, "2")
        XCTAssertTrue(list.insertAt(.index(1), with: 3))
        XCTAssertEqual(list.head?.description, "2 <-> 3")
        XCTAssertFalse(list.insertAt(.index(-1), with: -1))
        XCTAssertEqual(list.head?.description, "2 <-> 3")
        XCTAssertFalse(list.insertAt(.index(100), with: 100))
        XCTAssertEqual(list.head?.description, "2 <-> 3")
        
//        let list = DoublyLinkedList<Int>()
//        _ = list.insertAt(.end, with: 0)
//        _ = list.insertAt(.end, with: 1)
//        _ = list.insertAt(.end, with: 2)
//        _ = list.insertAt(.end, with: 3)
//        _ = list.insertAt(.end, with: 4)//0 <-> 1 <-> 2 <-> 3 <-> 4
//        _ = list.insertAt(.index(3), with: 5)
//        XCTAssertEqual(list.head?.description, "0 <-> 1 <-> 2 <-> 5 <-> 3 <-> 4")
    }
}

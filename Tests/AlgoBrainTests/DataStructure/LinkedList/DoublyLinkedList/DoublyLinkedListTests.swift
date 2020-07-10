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
    
    func testInsertAtFirst() {
        let list = DoublyLinkedList<Int>()
        _ = list.insertAt(.start, with: 0)
        _ = list.insertAt(.start, with: 1)
        XCTAssertEqual(list.head?.description, "1 <-> 0")
    }
}

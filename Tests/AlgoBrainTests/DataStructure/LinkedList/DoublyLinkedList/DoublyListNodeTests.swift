//
//  DoublyListNodeTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-10.
//

import XCTest
@testable import AlgoBrain

final class DoublyListNodeTests: XCTestCase {
    func testNode() {
        let nodeOne = DoublyListNode<String>("First")
        let nodeTwo = DoublyListNode<String>("Second")
        let nodeThree = DoublyListNode<String>("Third")
        XCTAssertEqual(nodeOne.description, "First")
        
        nodeOne.next = nodeTwo
        nodeTwo.next = nodeThree
        
        XCTAssertEqual(nodeOne.description, "First <-> Second <-> Third")
        XCTAssertEqual(nodeTwo.description, "Second <-> Third")
        XCTAssertEqual(nodeThree.description, "Third")
    }
}

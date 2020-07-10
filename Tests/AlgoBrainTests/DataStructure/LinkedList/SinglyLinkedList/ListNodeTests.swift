//
//  ListNodeTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-06.
//

import XCTest
@testable import AlgoBrain

final class ListNodeTests: XCTestCase {
    func testNode() {
        let nodeOne = ListNode<String>("First")
        let nodeTwo = ListNode<String>("Second")
        let nodeThree = ListNode<String>("Third")
        XCTAssertEqual(nodeOne.description, "First")
        
        nodeOne.next = nodeTwo
        nodeTwo.next = nodeThree
        
        XCTAssertEqual(nodeOne.description, "First -> Second -> Third")
        XCTAssertEqual(nodeTwo.description, "Second -> Third")
        XCTAssertEqual(nodeThree.description, "Third")
    }
}

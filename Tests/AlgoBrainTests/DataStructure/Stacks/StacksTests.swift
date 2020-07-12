//
//  StackTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation


import XCTest
@testable import AlgoBrain

final class StackTests: XCTestCase {
    func testStackArray() {
        var stack = Stack<Int>.asArray()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.description, "Stack is empty")
        stack.push(0)
        stack.push(1)
        stack.push(2)
        let stackDescription1 = """
        --- Top ---
        2
        1
        0
        --- End ---
        """
        XCTAssertEqual(stack.description, stackDescription1)
        XCTAssertEqual(stack.pop()?.description, "2")
        let stackDescription2 = """
        --- Top ---
        1
        0
        --- End ---
        """
        XCTAssertEqual(stack.description, stackDescription2)
        XCTAssertEqual(stack.peek()?.description, "1")
        XCTAssertEqual(stack.description, stackDescription2)
        XCTAssertEqual(stack.pop()?.description, "1")
        XCTAssertEqual(stack.pop()?.description, "0")
        XCTAssertNil(stack.pop()?.description)
        XCTAssertNil(stack.peek()?.description)
    }
    
    func testStackList() {
        var stack = Stack<Int>.asList()
        XCTAssertTrue(stack.isEmpty)
        stack.push(0)
        stack.push(1)
        stack.push(2)
        XCTAssertEqual(stack.top?.description, "2 -> 1 -> 0")
        XCTAssertEqual(stack.pop()?.description, "2")
        XCTAssertEqual(stack.top?.description, "1 -> 0")
        XCTAssertEqual(stack.peek()?.description, "1")
        XCTAssertEqual(stack.top?.description, "1 -> 0")
        XCTAssertEqual(stack.pop()?.description, "1")
        XCTAssertEqual(stack.pop()?.description, "0")
        XCTAssertNil(stack.pop()?.description)
        XCTAssertNil(stack.peek()?.description)
    }
}

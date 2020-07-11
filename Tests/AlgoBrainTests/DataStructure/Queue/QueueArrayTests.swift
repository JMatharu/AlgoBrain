//
//  File.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import XCTest
@testable import AlgoBrain

final class QueueArrayTests: XCTestCase {
    func testQueueArray() {
        var queue = Queue<Int>.asArray()
        XCTAssertTrue(queue.isEmpty)
        XCTAssertNil(queue.deque()?.description)
        XCTAssertNil(queue.peak()?.description)
        queue.enqueue(0)
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertEqual(queue.description, "0 -> 1 -> 2 -> 3")
        XCTAssertEqual(queue.deque()?.description, "0")
        XCTAssertEqual(queue.description, "1 -> 2 -> 3")
        XCTAssertEqual(queue.peak()?.description, "1")
        XCTAssertEqual(queue.description, "1 -> 2 -> 3")
    }
    
    func testQueueList() {
        var queue = Queue<Int>.asList()
        XCTAssertTrue(queue.isEmpty)
        XCTAssertNil(queue.deque()?.description)
        XCTAssertNil(queue.peak()?.description)
        queue.enqueue(0)
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        XCTAssertEqual(queue.head?.description, "0 -> 1 -> 2 -> 3")
        XCTAssertEqual(queue.deque()?.description, "0")
        XCTAssertEqual(queue.head?.description, "1 -> 2 -> 3")
        XCTAssertEqual(queue.peak()?.description, "1")
        XCTAssertEqual(queue.head?.description, "1 -> 2 -> 3")
    }
}

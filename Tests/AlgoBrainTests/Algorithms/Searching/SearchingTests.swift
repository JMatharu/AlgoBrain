//
//  File.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import XCTest
@testable import AlgoBrain

final class LinearSearchTests: XCTestCase {
    func testLinearSearch() {
        XCTAssertEqual(Searching.linearSearch([0,1,2,3,4], 2), 2)
        XCTAssertEqual(Searching.linearSearch([4,3,2,1,0], 4), 0)
        XCTAssertEqual(Searching.linearSearch([0.0,1.2,2.3,3.4,4.5], 4.5), 4)
        XCTAssertNil(Searching.linearSearch([], 1))
    }
    
    func testBinarySearch() {
        XCTAssertEqual(Searching.binarySearch([0,1,2,3,4], 2), 2)
        XCTAssertEqual(Searching.binarySearch([0,1,2,3,4], 1), 1)
        XCTAssertNil(Searching.binarySearch([4,3,2,1,0], 5))
        XCTAssertEqual(Searching.binarySearch([0.0,1.2,2.3,3.4,4.5], 4.5), 4)
        XCTAssertNil(Searching.binarySearch([], 1))
    }
}

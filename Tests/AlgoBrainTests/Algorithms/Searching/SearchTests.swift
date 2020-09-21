//
//  SearchTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import XCTest
@testable import AlgoBrain

final class SearchTests: XCTestCase {
    func testLinearSearch() {
        XCTAssertEqual(Search.withLinear([0,1,2,3,4], 2), 2)
        XCTAssertEqual(Search.withLinear([4,3,2,1,0], 4), 0)
        XCTAssertEqual(Search.withLinear([0.0,1.2,2.3,3.4,4.5], 4.5), 4)
        XCTAssertNil(Search.withLinear([], 1))
    }
    
    func testBinarySearch() {
        XCTAssertEqual(Search.withBinary([0,1,2,3,4], 2), 2)
        XCTAssertEqual(Search.withBinary([0,1,2,3,4], 1), 1)
        XCTAssertNil(Search.withBinary([4,3,2,1,0], 5))
        XCTAssertEqual(Search.withBinary([0.0,1.2,2.3,3.4,4.5], 4.5), 4)
        XCTAssertNil(Search.withBinary([], 1))
    }
}

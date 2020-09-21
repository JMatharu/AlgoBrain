//
//  SortingTests.swift
//  
//
//  Created by Jagdeep Matharu on 2020-09-20.
//

import XCTest
@testable import AlgoBrain

class SortingTest: XCTestCase {
    func testBubbleSort() {
        var array1 = [3,4,62,1,5,343, 88]
        XCTAssertEqual(Sort.withBubble(&array1, by: >), [1, 3, 4, 5, 62, 88, 343])
        XCTAssertEqual(Sort.withBubble(&array1, by: <), [343, 88, 62, 5, 4, 3, 1])
    }
}

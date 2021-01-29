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
        var array = [12, 90, 34, 2, 45, 3, 22, 18, 5, 78]
        Sort.withBubble(&array, by: >)
        XCTAssertEqual(array, [2, 3, 5, 12, 18, 22, 34, 45, 78, 90])
        Sort.withBubble(&array, by: <)
        XCTAssertEqual(array, [90, 78, 45, 34, 22, 18, 12, 5, 3, 2])
    }
    
    func testInsertionSort() {
        var array = [12, 90, 34, 2, 45, 3, 22, 18, 5, 78]
        XCTAssertEqual(Sort.withInsertion(&array), [2, 3, 5, 12, 18, 22, 34, 45, 78, 90])
    }
}

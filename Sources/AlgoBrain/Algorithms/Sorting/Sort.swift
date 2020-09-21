//
//  Bubble Sort.swift
//  
//
//  Created by Jagdeep Matharu on 2020-09-20.
//

import Foundation

struct Sort {
    /// Bubble Sort
    /// - Parameter array: array to be sorted
    /// - Parameter comparison: Compare in either < or >
    /// - Returns: array in sorted order
    static func withBubble<T: Comparable>(_ array: inout [T], by comparison: (T, T) -> Bool) -> [T] {
        var didSwapedAny = false
        for i in 1...array.count {
            for j in 0..<array.count - i {
                if comparison(array[j], array[j + 1]) {
                    array.swapAt(j, j + 1)
                    didSwapedAny = true
                }
            }
            
            if !didSwapedAny {
                break
            }
        }
        return array
    }
    
    private init() {}
}


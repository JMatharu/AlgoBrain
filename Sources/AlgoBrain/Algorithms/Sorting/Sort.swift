//
//  Bubble Sort.swift
//  
//
//  Created by Jagdeep Matharu on 2020-09-20.
//

import Foundation

struct Sort {
    /// Bubble Sort
    /// Time Complexity - ϴ(n²), where `n` is the number of elements in array
    /// - Parameter array: array to be sorted
    /// - Parameter comparison: Compare in either < or >
    static func withBubble<T: Comparable>(_ array: inout [T], by comparison: (T, T) -> Bool)  {
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
    }
    
    /// Bubble Sort
    /// Time Complexity - ϴ(n²), where `n` is the number of elements in array
    /// - Parameter array: array to be sorted
    static func withInsertion<T: Comparable>(_ array: inout [T]) -> [T] {
        for i in 1..<array.count {
            var j = i - 1
            let current = array[i]
            
            while j >= 0 && array[j] > current {
                array[j + 1] = array[j]
                j -= 1
            }
            array[j + 1] = current
        }
        return array
    }
    
    private init() {}
}


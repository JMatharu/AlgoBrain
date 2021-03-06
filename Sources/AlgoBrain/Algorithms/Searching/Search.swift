//
//  Searching.swift
//
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

public struct Search {
    
    /// Linear Search
    /// Time Complexity - ϴ(n), where `n` is the number of elements in array
    /// - Parameter val: Value to be searched
    /// - Returns: Index of the element to be search, if found else `nil`
    static func withLinear<T: Equatable>(_ array: [T], _ val: T) -> Int? {
        for (index, element) in array.enumerated() where element == val {
            return index
        }
        return nil
    }
        
    /// Binary Search
    /// Note: Array needs to be sorted in order to find the index
    /// Time Complexity - ϴ(log n)
    /// - Parameter val: Value to be searched
    /// - Returns: Index of the element to be search, if found else `nil`
    static func withBinary<T: Comparable>(_ array: [T], _ val: T) -> Int? {
        return binary(array, val: val, range: 0..<array.count)
    }
    
    /// Binary Search helper method
    /// - Parameters:
    ///   - array: Array to be searched
    ///   - val: Value to be searched
    ///   - range: Range of indexes on to which search needs to occure
    /// - Returns: Index of `val` if item is found, else `nil`
    private static func binary<T: Comparable>(_ array: [T], val: T, range: Range<Int>) -> Int? {
        guard !(range.lowerBound >= range.upperBound) else { return nil }
        
        let mid = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        var result: Int
        if array[mid] > val {
            return binary(array, val: val, range: range.lowerBound..<mid)
        } else if array[mid] < val {
            return binary(array, val: val, range: mid + 1..<range.upperBound)
        } else {
            result = mid
        }
        return result
    }
    
    private init() {}
}


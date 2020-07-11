//
//  QueueArray.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Implementation of Queue as Array
public struct QueueArray<T>: CustomStringConvertible {
    
    private var elements = [T?]()
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var description: String {
        var temp = ""
        for index in 0..<elements.count {
            if let element = elements[index] {
                temp += "\(element)"
            }
            if index < elements.count - 1 {
                temp += " -> "
            }
        }
        return temp
    }
    
    /// Add to a Queue
    /// - Parameter value: Value to be inserted at a specific place
    public mutating func enqueue(_ value: T) {
        elements += [value]
    }
    
    /// Remove from a Queue
    /// - Returns: Value of removed item from queue
    public mutating func deque() -> T? {
        guard !isEmpty else { print("Unable to remove from Queue as it is empty!"); return nil }
        return elements.removeFirst()
    }
    
    /// Sees the element at front without removing from queue
    /// - Returns: Value of visited item from queue
    public mutating func peak() -> T? {
        return elements.first ?? nil
    }
}

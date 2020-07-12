//
//  StackArray.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Implementation of Stack as Array
public struct StackArray<T>: CustomStringConvertible {
    
    private var elements = [T?]()
    
    public var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var description: String {
        guard !elements.isEmpty else { return "Stack is empty" }
        
        var temp = "--- Top ---\n"
        
        for item in elements.reversed() {
            if let item = item {
                temp += "\(item)\n"
            }
        }
        temp += "--- End ---"
        return temp
    }
    
    /// Add to a Stack
    /// Time Complexity - O(n), where `n` is the number of existing elements in array
    /// - Parameter val: Value to be inserted at a specific place
    public mutating func push(_ val: T) {
        elements.append(val)
    }
    
    /// Remove from a Stack
    /// Time Complexity - O(1)
    /// - Returns: Value of removed item from stack
    public mutating func pop() -> T? {
        guard !isEmpty else { print("Unable to remove from Stack as it is empty!"); return nil }
        return elements.removeLast()
    }
    
    /// Sees the element at top without removing from stack
    /// Time Complexity - O(1)
    /// - Returns: Value of visited item from stack
    public mutating func peek() -> T? {
        return elements.last ?? nil
    }
}

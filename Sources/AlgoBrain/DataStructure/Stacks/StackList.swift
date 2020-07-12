//
//  StackList.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Implementation of Stack as LinkedList
public struct StackList<T> {
    public var top: ListNode<T>?
    
    public var isEmpty: Bool {
        return top == nil
    }
    
    /// Add to a Stack
    /// Time Complexity - O(1)
    /// - Parameter val: Value to be inserted at a specific place
    public mutating func push(_ val: T) {
        let newNode = ListNode(val)
        guard !isEmpty else {
            top = newNode
            return
        }
        newNode.next = top
        top = newNode
    }
    
    /// Remove from a Stack
    /// Time Complexity - O(1)
    /// - Returns: Value of removed item from Stack
    public mutating func pop() -> T? {
        guard !isEmpty else { print("Unable to remove from Stack as it is empty!"); return nil }
        let removedNode = top
        top = top?.next
        return removedNode?.val
    }
    
    /// Sees the element at top without removing from stack
    /// Time Complexity - O(1)
    /// - Returns: Value of visited item from stack
    public mutating func peek() -> T? {
        return top?.val
    }
}

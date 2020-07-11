//
//  File.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Implementation of Queue as LinkedList
public struct QueueList<T> {
    
    public var head: ListNode<T>?
    public var tail: ListNode<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    /// Add to a Queue
    /// Time Complexity - O(1)
    /// - Parameter value: Value to be inserted at a specific place
    public mutating func enqueue(_ value: T) {
        let newNode = ListNode<T>(value)
        guard !isEmpty else {
            head = newNode
            tail = newNode
            return
        }
        
        tail?.next = newNode
        tail = newNode
    }
    
    /// Remove from a Queue
    /// Time Complexity - O(1)
    /// - Returns: Value of removed item from queue
    public mutating func deque() -> T? {
        guard !isEmpty else { print("Unable to remove from Queue as it is empty!"); return nil }
        let temp = head
        head = temp?.next
        return temp?.val
    }
    
    /// Sees the element at front without removing from queue
    /// Time Complexity - O(1)
    /// - Returns: Value of visited item from queue
    public mutating func peak() -> T? {
        return head?.val
    }
}

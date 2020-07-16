//
//  LinkedList.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-06.
//

import Foundation

/// Implementation of Singly linked list
public struct LinkedList<T> {
    public var head: ListNode<T>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        guard !isEmpty else { return 0 }
        
        var temp = head
        var count = 1
        while temp?.next != nil {
            count += 1
            temp = temp?.next
        }
        return count
    }
}

// Insertion
public extension LinkedList {
    
    /// Inserting to a linked list
    /// - Parameters:
    ///   - position: Defined as start, end or at an index
    ///   - val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    @discardableResult
    mutating func insertAt(_ position: Position, with val: T) -> Bool {
        switch position {
        case .start:
            return insertAtFirst(val)
        case .end:
            return insertAtLast(val)
        case .index(let index):
            return insert(val, at: index)
        }
    }
    
    /// Insertion at head to a linked list,
    /// Time Complexity - O(1)
    /// - Parameter val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func insertAtFirst(_ val: T) -> Bool {
        let node = ListNode(val)
        node.next = head
        head = node
        return true
    }
    
    /// Insertion at tail to a linked list
    /// Time Complexity - O(n)
    /// - Parameter val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func insertAtLast(_ val: T) -> Bool {
        guard !isEmpty else { return insertAtFirst(val) }
        
        var temp = head
        
        while temp?.next != nil {
            temp = temp?.next
        }
        
        temp?.next = ListNode(val)
        return true
    }
    
    //
    /// Insert at a particular index in to a linked list
    /// Time Complexity - O(n), where `n` is the given index
    /// - Parameters:
    ///   - val: Value to be inserted at a specific place
    ///   - index: Index where to insert
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func insert(_ val: T, at index: Int) -> Bool {
        if index < 0 { print("Index should be greater than or equal to 0."); return false }
        
        if isEmpty && index > 0 { print("Cannot insert in linked list at index \(index) as list is empty"); return false }
        
        guard !isEmpty else { return insertAtFirst(val) }
        
        var temp = head
        var currentIndex = 0
        
        while temp?.next != nil && currentIndex + 1 < index {
            temp = temp?.next
            currentIndex += 1
        }
        var success: Bool = false
        if currentIndex + 1 == index {
            let newNode = ListNode(val)
            newNode.next = temp?.next
            temp?.next = newNode
            success = true
        } else {
            print("Cannot insert in linked list at index \(index) as list count is \(currentIndex)")
            success = false
        }
        return success
    }
}

// Delete
public extension LinkedList {
    
    /// Removing from a Linked List
    /// - Parameter position: Defined as start, end or at an index
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    @discardableResult
    mutating func removeAt(_ position: Position) -> Bool {
        guard !isEmpty else { print("Cannot delete from an empty list."); return false }
        switch position {
        case .start:
            return deleteAtFirst()
        case .end:
            return deleteAtLast()
        case .index(let index):
            return delete(at: index)
        }
    }
    
    /// Remove from start of a Linked List
    /// Time Complexity - O(1)
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func deleteAtFirst() -> Bool {
        head = head?.next
        return true
    }
   
    /// Remove from end of a Linked List
    /// Time Complexity - O(n), where `n` is the given index
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func deleteAtLast() -> Bool {
        var temp = head
        var previous = head
        while temp?.next != nil {
            previous = temp
            temp = temp?.next
        }

        previous?.next = nil
        return true
    }
    
    /// Remove from a particular index in a Linked List
    /// Time Complexity - O(n), where `n` is the given index
    /// - Parameter index: Index where to delete
    /// - Returns: `true` or `false` as referring to the success of insertion to a linked list
    fileprivate mutating func delete(at index: Int) -> Bool {
        var temp = head
        var currentIndex = 0
        while currentIndex + 1 < index {
            temp = temp?.next
            currentIndex += 1
        }
        temp?.next = temp?.next?.next
        return true
    }
}

// Reverse
public extension LinkedList {
    /// Reverse a Linked list,
    /// Time Complexity - O(n)
    mutating func reverse() {
        var current = head
        var next = head
        var previous: ListNode<T>?
        
        while next != nil {
            next = next?.next
            current?.next = previous
            previous = current
            
            current = next
        }
        head = previous
    }
}

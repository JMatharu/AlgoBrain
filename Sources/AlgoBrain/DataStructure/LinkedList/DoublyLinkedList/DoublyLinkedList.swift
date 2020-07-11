//
//  DoublyLinkedList.swift
//
//
//  Created by Jagdeep Matharu on 2020-07-08.
//

import Foundation

/// Implementation of Doubly Linked List
public class DoublyLinkedList<T> {
    public var head: DoublyListNode<T>?
    public var tail: DoublyListNode<T>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        guard !isEmpty else { return 0 }
        
        var temp = head
        var count = 1
        while temp?.next != nil {
            temp = temp?.next
            count += 1
        }
        return count
    }
}

// Insertion
public extension DoublyLinkedList {
    
    /// Inserting to a Doubly Linked List
    /// - Parameters:
    ///   - position: Defined as start, end or at an index
    ///   - val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    func insertAt(_ position: Position, with val: T) -> Bool {
        
        switch position {
        case .start:
            return insertAtFirst(val)
        case .end:
            return insertAtLast(val)
        case .index(let index):
            return insert(val, at: index)
        }
    }
    
    /// Insertion at head to a Doubly Linked List
    /// Time Complexity - O(1)
    /// - Parameter val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func insertAtFirst(_ val: T) -> Bool {
        let newNode = DoublyListNode(val)
        
        guard !isEmpty else { head = newNode; tail = newNode; return true }
        
        newNode.next = head
        head?.previous = newNode
        head = newNode
        
        return true
    }
    
    /// Insertion at tail to a Doubly Linked List
    /// Time Complexity - O(1)
    /// - Parameter val: Value to be inserted at a specific place
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func insertAtLast(_ val: T) -> Bool {
        let newNode = DoublyListNode(val)
        
        guard !isEmpty else { head = newNode; tail = newNode; return true }
    
        tail?.next = newNode
        newNode.previous = tail
        tail = newNode
        
        return true
    }
    
    /// Insert at a particular index in to a Doubly Linked List
    /// Time Complexity - O(n), where `n` is the given index
    /// - Parameters:
    ///   - val: Value to be inserted at a specific place
    ///   - index: Index where to insert
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func insert(_ val: T, at index: Int) -> Bool {
        
        if index < 0 { print("Index should be greater than or equal to 0."); return false }
        
        if isEmpty && index > 0 { print("Cannot insert in doubly linked list at index \(index) as list is empty"); return false }
        
        guard !isEmpty else { return insertAtFirst(val) }
        
        var currentIndex = 0
        var temp = head
        
        while temp?.next != nil && currentIndex + 1 < index {
            temp = temp?.next
            currentIndex += 1
        }
        
        var success: Bool = false
        if currentIndex + 1 == index {
            let newNode = DoublyListNode(val)
            newNode.next = temp?.next
            temp?.next = newNode
            success = true
        } else {
            print("Cannot insert in doubly linked list at index \(index) as list count is \(currentIndex)")
            success = false
        }
        return success
    }
}

// Deletion
public extension DoublyLinkedList {
    
    /// Removing from a Doubly Linked List
    /// - Parameter position: Defined as start, end or at an index
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    func removeFrom(_ position: Position) -> Bool {
        guard !isEmpty else { print("Cannot delete from an empty list."); return false }
        switch position {
        case .start:
            return deleteFromFirst()
        case .end:
            return deleteFromLast()
        case .index(let index):
            return delete(at: index)
        }
    }
    
    /// Remove from start of a Doubly Linked List
    /// Time Complexity - O(1)
    /// - Returns: Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func deleteFromFirst() -> Bool {
        guard count > 1 else { head = nil; tail = nil; return true }
        head = head?.next
        return true
    }
    
    /// Remove from end of a Doubly Linked List
    /// Time Complexity - O(1)
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func deleteFromLast() -> Bool {
        guard count > 1 else { head = nil; tail = nil; return true }
        tail = tail?.previous
        tail?.next = nil
        return true
    }
    
    /// Remove from a particular index in a Doubly Linked List
    /// Time Complexity - O(n), where `n` is the given index
    /// - Parameter index: Index where to delete
    /// - Returns: `true` or `false` as referring to the success of insertion to a doubly linked list
    fileprivate func delete(at index: Int) -> Bool {
        guard (index > 0) else { print("Unable to delete at index \(index)"); return false }
        guard index < count else { print("Index: \(index) exceeds length of list"); return false }
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
public extension DoublyLinkedList {
    
    /// Reverse a Doubly Linked list
    /// Time Complexity - O(n)
    func reverse() {
        var current = head
        var prevNode: DoublyListNode<T>?
        
        while current != nil {
            let next = current?.next
            current?.next = current?.previous
            prevNode = current
            current = next
        }
        head = prevNode
        tail = current
    }
}


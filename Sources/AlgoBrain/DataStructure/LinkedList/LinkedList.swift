//
//  LinkedList.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-06.
//

import Foundation

public class LinkedList<T> {
    public var head: ListNode<T>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        if isEmpty { return 0 }
        
        var temp = head
        var count = 1
        while temp?.next != nil {
            count += 1
            temp = temp?.next
        }
        return count
    }
    
    public enum Position {
        case start, end, index(Int)
    }
}

// Insertion
public extension LinkedList {
    
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
    
    // insert at tail O(1)
    private func insertAtFirst(_ val: T) -> Bool {
        let node = ListNode(val)
        node.next = head
        head = node
        return true
    }
    
    // insert at head O(n)
    private func insertAtLast(_ val: T) -> Bool {
        guard !isEmpty else { return insertAtFirst(val) }
        
        var temp = head
        
        while temp?.next != nil {
            temp = temp?.next
        }
        
        temp?.next = ListNode(val)
        return true
    }
    
    // O(n), where `n` is the given index
    private func insert(_ val: T, at index: Int) -> Bool {
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
    
    func removeFrom(_ position: Position) -> Bool {
        if isEmpty { print("Cannot delete from an empty list."); return false }
        switch position {
        case .start:
            return deleteFromFirst()
        case .end:
            return deleteFromLast()
        case .index(let index):
            return delete(at: index)
        }
    }
    
    // O(1)
    private func deleteFromFirst() -> Bool {
        head = head?.next
        return true
    }
   
    // O(n)
    private func deleteFromLast() -> Bool {
        var temp = head
        var previous = head
        while temp?.next != nil {
            previous = temp
            temp = temp?.next
        }

        previous?.next = nil
        return true
    }
    
    // O(n), where `n` is the given index
    private func delete(at index: Int) -> Bool {
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
    func reverse() {
        
    }
}

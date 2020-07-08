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
    
    func insertAt(_ position: Position, with val: T) {
        switch position {
        case .start:
            insertAtFirst(val)
        case .end:
            insertAtLast(val)
        case .index(let index):
            insert(val, at: index)
        }
    }
    
    // insert at tail O(1)
    private func insertAtFirst(_ val: T) {
        let node = ListNode(val)
        node.next = head
        head = node
    }
    
    // insert at head O(n)
    private func insertAtLast(_ val: T) {
        guard !isEmpty else { insertAtFirst(val); return }
        
        var temp = head
        
        while temp?.next != nil {
            temp = temp?.next
        }
        
        temp?.next = ListNode(val)
    }
    
    // O(n), where `n` is the given index
    private func insert(_ val: T, at index: Int) {
        if index < 0 { print("Index should be greater than or equal to 0."); return }
        
        if isEmpty && index > 0 { print("Cannot insert in linked list at index \(index) as list is empty"); return }
        
        guard !isEmpty else { insertAtFirst(val); return }
        
        var temp = head
        var currentIndex = 0
        
        while temp?.next != nil && currentIndex + 1 < index {
            temp = temp?.next
            currentIndex += 1
        }
        if currentIndex + 1 == index {
            let newNode = ListNode(val)
            newNode.next = temp?.next
            temp?.next = newNode
        } else {
            print("Cannot insert in linked list at index \(index) as list count is \(currentIndex)")
        }
        
    }
}

// Delete
public extension LinkedList {
    
    func deleteFrom(_ position: Position) {
        switch position {
        case .start:
            deleteFromFirst()
        case .end:
            deleteFromLast()
        case .index(let index):
            delete(at: index)
        }
    }
    
    // O(1)
    private func deleteFromFirst() {
        
    }
   
    // O(n), where `n` is the given index
    private func deleteFromLast() {
        
    }
    
    // O(n), where `n` is the given index
    private func delete(at index: Int) {
        
    }
}

// Reverse
public extension LinkedList {
    func reverse() {
        
    }
}

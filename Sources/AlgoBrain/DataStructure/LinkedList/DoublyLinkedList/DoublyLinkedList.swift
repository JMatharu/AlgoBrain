//
//  DoublyLinkedList.swift
//
//
//  Created by Jagdeep Matharu on 2020-07-08.
//

import Foundation

public class DoublyLinkedList<T> {
    public var head: DoublyListNode<T>?
    public var tail: DoublyListNode<T>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        if isEmpty { return 0 }
        
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
    
    fileprivate func insertAtFirst(_ val: T) -> Bool {
        let newNode = DoublyListNode(val)
        
        if isEmpty {
            head = newNode
            tail = newNode
            return true
        }
        newNode.next = head
        head?.previous = newNode
        head = newNode
        
        return true
    }
    
    fileprivate func insertAtLast(_ val: T) -> Bool {
        let newNode = DoublyListNode(val)
        
        if isEmpty {
            head = newNode
            tail = newNode
        }
        
        
        return true
    }
    
    fileprivate func insert(_ val: T, at index: Int) -> Bool {
        
        return true
    }
}

// Deletion
public extension DoublyLinkedList {
    
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
    
    fileprivate func deleteFromFirst() -> Bool {
        
        return true
    }
    
    fileprivate func deleteFromLast() -> Bool {
           
        return true
    }
    
    fileprivate func delete(at index: Int) -> Bool {
        
        return true
    }
}

// Reverse
public extension DoublyLinkedList {
    
    func reverse() {
        
    }
}


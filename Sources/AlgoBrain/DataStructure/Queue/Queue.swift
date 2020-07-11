//
//  Queue.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Queue Data structure as Array and LinkedList
/// FIFO Data Structure
public struct Queue<T> {
    
    /// Create instance of Queue with Array type
    /// - Returns: QueueArray, Arrays used as an element for Queue
    public static func asArray() -> QueueArray<T> {
        return QueueArray<T>()
    }
    
    /// Create instance of Queue with LinkedList type
    /// - Returns: QueueList, Linked List used as an element for Queue
    public static func asList() -> QueueList<T> {
        return QueueList<T>()
    }
}

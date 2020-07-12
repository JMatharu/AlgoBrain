//
//  Stack.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-11.
//

import Foundation

/// Stack Data structure as Array and LinkedList
/// LIFO
public struct Stack<T> {
    
    /// Create instance of Stack with Array type
    /// - Returns: StackArray, Arrays used as an element for Stack
    public static func asArray() -> StackArray<T> {
        return StackArray<T>()
    }
    
    /// Create instance of Stack with LinkedList type
    /// - Returns: QueueList, Linked List used as an element for Stack
    public static func asList() -> StackList<T> {
        return StackList<T>()
    }
}

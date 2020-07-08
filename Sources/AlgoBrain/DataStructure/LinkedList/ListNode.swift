//
//  ListNode.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-06.
//

import Foundation

/// List node used to create a Linked List, also can be called as a `node`.
public class ListNode<T>: CustomStringConvertible {
    
    public var val: T
    public var next: ListNode?
    
    /// Initilizer of ListNode
    /// - Parameter val: Value of the declared data type
    public init(_ val: T) {
        self.val = val
        self.next = nil
    }
    
    public var description: String {
        guard let next = next else {
            return "\(val)"
        }
        return "\(val) -> " + String(describing: next)
    }
}

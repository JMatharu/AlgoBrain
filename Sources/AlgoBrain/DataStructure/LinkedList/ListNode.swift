//
//  ListNode.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-06.
//

import Foundation

public class ListNode<T>: CustomStringConvertible {
    
    public var val: T
    public var next: ListNode?
    
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

//
//  File.swift
//  
//
//  Created by Jagdeep Matharu on 2020-07-09.
//

import Foundation

public class DoublyListNode<T>: CustomStringConvertible {
    
    var val: T
    var next: DoublyListNode?
    weak var previous: DoublyListNode?
    init(_ val: T) {
        self.val = val
    }
    
    public var description: String {
        guard let next = next else {
            return "\(val)"
        }
        return "\(val) <-> " + String(describing: next)
    }
}

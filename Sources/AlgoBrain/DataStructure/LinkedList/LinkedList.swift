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
}

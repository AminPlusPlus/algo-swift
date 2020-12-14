//
//  LinkedList.swift
//  alog
//
//  Created by Aminjoni Abdullozoda on 12/13/20.
//

import Foundation

public class LinkedList<T : Comparable> {
    public let value : T
    public var left  : LinkedList?
    public var right : LinkedList?
    
    public init (value :  T) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}


extension LinkedList {
    
    /// Traverse a LinkedList linear using recursion
    /// - Parameter head: Head of LinkedList
    public static func traverse(head : LinkedList) {
        print(head.value)
        if head.right != nil {
            traverse(head: head.right!)
        }
        return
    }
    
    
    /// Append a elements follow a array
    /// - Parameter values: values T any values
    /// - Returns: LinkedList
    public static func append(values : [T]) -> LinkedList {
        
        let head = LinkedList(value: values[0])
        var current = head
        
        for i in 1..<values.count {
            let newLlist = LinkedList(value: values[i])
            current.right = newLlist
            current = newLlist
        }
        
        return head
    }
}

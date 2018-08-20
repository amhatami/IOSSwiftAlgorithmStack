//
//  Stack.swift
//  IOSSwiftAlgorithmStack
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//
// Stack Data Structure algorithm !
// Class    abstract data type LIFO (Last In First Out)
// Data structure   Stack
// Worst-case performance    О(n)
// Best-case performance    O(1)
// Average performance    О(1) 
// Worst-case space complexity
//   where n is the size of the input array.
//
//   Note:  Inserting at the beginning of an array is expensive, an O(n) operation.
//   but Adding at the end is O(1).
//
// Author: Pooya Hatami

import Foundation


public struct Stack<Element> {
    
    fileprivate var array: [Element]  = []
    
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    var isEmpty : Bool {
        return array.isEmpty
    }
    
    
    var count: Int {
        return array.count
    }
    
    public func showStack() {
        var tempStack = self
        while let value = tempStack.pop() {
            print(value)
        }
    }

    
    public func toArrayStack() -> [String] {
        var tempStack = self
        var outArray : [String] = []
        while let value = tempStack.pop() {
            outArray.append(value as! String)
        }
        
        return outArray
    }

    
}

//
//  MyArray.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 06/03/2025.
//

import Foundation

struct MyArray<T> {
    private var elements: [T] = []
    var count = 0

    mutating func push(_ element: T) {
        elements.append(element)
        count += 1
    }

    mutating func pop() {
        elements.remove(at: elements.count - 1)
        count -= 1
    }
}

//why struct over classes?
// structs have value semantics and classes have reference semantics. structs prevent unintended behaviour when passing instances around
// structs are thread safe, classes need extra care to manage concurrent access
// structs are stack-backed which makes them light-weight, classes are heap-backed which creates additional overhead for reference counting
// we can use classes when we need to use inheritance, shared mutable state or reference semantics e.g. for maintaining caches

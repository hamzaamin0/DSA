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
    var isEmpty: Bool { return count == 0 }

    mutating func push(_ element: T) {
        elements.append(element)
        count += 1
    }

    mutating func pop() {
        if !isEmpty {
            elements.remove(at: count - 1)
            count -= 1
        } else {
            debugPrint("Array is already empty! Nothing to pop")
        }

    }

    func getItem(at index: Int) -> T? {
        return index >= 0 && index < count ? elements[index] : nil
    }

    mutating func removeItem(at index: Int) {
        shiftItems(index: index)

    }

    private mutating func shiftItems(index: Int) {
        if index >= 0 && index < count {
            for _ in index...count - 1 {
                if index == count - 1 {
                    pop()
                    break
                }
                elements[index] = elements[index+1]
            }
            if index < count {
                pop()
            }
        } else {
            debugPrint("Index out of bound exception")
        }

    }
}

//why struct over classes?
// structs have value semantics and classes have reference semantics. structs prevent unintended behaviour when passing instances around
// structs are thread safe, classes need extra care to manage concurrent access
// structs are stack-backed which makes them light-weight, classes are heap-backed which creates additional overhead for reference counting
// we can use classes when we need to use inheritance, shared mutable state or reference semantics e.g. for maintaining caches

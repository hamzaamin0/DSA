//
//  MyLinkedList.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 26/03/2025.
//

import Foundation

class MyNode<Value: Equatable> {
    var value: Value
    var next: MyNode?

    init(value: Value) {
        self.value = value
    }
}

class MyLinkedList<Value: Equatable> {
    var head: MyNode<Value>?
    var tail: MyNode<Value>?
    var length: Int = 0

    func append(_ value: Value) {
        let newNode = MyNode(value: value)
        if head == nil {
            head = newNode
            return
        }

        var current = head
        while current?.next != nil {
            current = current?.next
        }

        current?.next = newNode
    }

    func remove(_ value: Value) {
        if head?.value == value {
            head = head?.next
            return
        }

        var current = head
        while current?.next != nil {
            if current?.next?.value == value {
                current?.next = current?.next?.next
            }
            current = current?.next
        }
    }

    func printList() {
        var current = head

        while current != nil {
            print(current!.value, terminator: "->")
            current = current?.next
        }

        print("nil")
    }

    static func testLinkedList() {
        // Example Usage
        let list = MyLinkedList<Int>()
        list.append(1)
        list.append(2)
        list.append(3)
        list.printList()  // Output: 1 -> 2 -> 3 -> nil

        list.remove(2)
        list.printList()  // Output: 1 -> 3 -> nil
    }
}

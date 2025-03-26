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

    func insert(at index: Int, value: Value) {
        let newNode = MyNode(value: value)
        var current = head
        var currentIndex = 0

        if index == 0 {
            newNode.next = head
            head = newNode
            return
        }

        while current != nil && (currentIndex < index - 1) {
            current = current?.next
            currentIndex += 1
        }

        if current == nil {
            print("Index out of bounds")
            return
        }

        newNode.next = current?.next
        current?.next = newNode
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
        list.append(3)
        list.append(4)
        list.printList()  // Output: 1 -> 3 -> 4 -> nil

        list.insert(at: 1, value: 2)
        list.printList()  // Output: 1 -> 2 -> 3 -> 4 -> nil

        list.insert(at: 0, value: 0)
        list.printList()  // Output: 0 -> 1 -> 2 -> 3 -> 4 -> nil

        list.insert(at: 10, value: 99)  // Output: Index out of bounds
    }
}

//
//  MyHashTable.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 20/03/2025.
//

import Foundation

class MyHashNode<Key: Hashable, Value> {
    var key: Key
    var value: Value
    var nextNode: MyHashNode?

    init(key: Key, value: Value) {
        self.key = key
        self.value = value
    }
}

class MyHashTable<Key: Hashable, Value> {

    private var buckets : [MyHashNode<Key, Value>?] // an array having all the key-value in the hash table. a single key-value is also called bucket
    private var count: Int = 0 // keeps count of the buckets
    private var capacity: Int

    init(capacity: Int) {
        self.buckets = Array(repeating: nil, count: capacity) // create an array with given capacity at the time of initialization
        self.capacity = capacity
    }

    // hash function
    private func getBucketIndex(for key: Key) -> Int {
        return abs(key.hashValue) % capacity
    }

    // insert

    func insert(key: Key, value: Value) {
        let index = getBucketIndex(for: key) // get index of the value using the hash function
        let newNode = MyHashNode(key: key, value: value) // the node to be inserted in the buckets

        if buckets[index] == nil {
            // if node at the index of given key is nil simply insert the node
            buckets[index] = newNode
        } else {

            // if node at the index of given key is NOT nil
            // use collision handling
            var current = buckets[index]
            while let node = current {


                if node.key == key {
                    // if a node with given key already exists, update its value
                    node.value = value
                    return
                }

                if node.nextNode == nil {
                    // if current node does not have next node
                    // insert newNode as next node of current node
                    node.nextNode = newNode
                    return
                }

                current = node.nextNode // loop through all the nodes in a bucket until its nil
            }


        }
        count += 1
    }

    // remove value for a given key

    func remove(key: Key) {
        let index = getBucketIndex(for: key)
        var current = buckets[index] // current is used to traverse the linked list inside the selected bucket.
        var prev: MyHashNode<Key, Value>? = nil // prev keeps track of the previous node to update its next pointer when deleting the node.

        while let node = current {
            // loop through all the nodes in a bucket
            if node.key == key {
                // if there is a node with the given key
                if prev == nil {
//                    If prev is nil, it means the key is found at the head of the linked list.
//                    We simply update buckets[index] to point to node.next, effectively removing the first node.
                    buckets[index] = node.nextNode
                } else {
//                    If prev is not nil, we update prev?.next to skip the current node and link prev to node.next, effectively removing node from the list.
                    prev?.nextNode = node.nextNode
                }
                count -= 1
                return
            }
            prev = node
            current = node.nextNode
        }


    }

    // retrieve

    func getValue(for key: Key) -> Value? {
        let index = getBucketIndex(for: key)
        var current = buckets[index]

        while let node = current {
            if node.key == key {
                return node.value
            }
            current = node.nextNode
        }

        return nil
    }

    // Print all key-value pairs
    func printTable() {
        for (i, bucket) in buckets.enumerated() {
            print("Bucket \(i):", terminator: " ")
            var current = bucket
            while let node = current {
                print("[\(node.key): \(node.value)]", terminator: " -> ")
                current = node.nextNode
            }
            print("nil")
        }
    }


}

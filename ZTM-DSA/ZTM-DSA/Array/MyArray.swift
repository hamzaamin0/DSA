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


//string operations in interview questions are always array questions

func reverseString(_ string: String) -> String {
    // solution1
//    return String(string.reversed())

    //solution2
    // convert string into array
    // take a loop and start from last index down to 0
    // take each element and put it in an array
    // convert array into string and return it


//    let strArray = Array(string)
//    var newArray: [Character] = []
//    for i in (0...string.count - 1).reversed() {
//        newArray.append(strArray[i])
//    }
//    return String(newArray)


    //solution3
//    let strArray = Array(string)
//    var newArray: [Character] = []
//    for i in stride(from: strArray.count - 1, to: -1, by: -1) {
//        newArray.append(strArray[i])
//    }
//    return String(newArray)

    //solution 4
    var reversed = ""
    for char in string {
        reversed = String(char) + reversed
    }
    return reversed
}

// merge two sorted arrays into a third sorted array
// [0, 19, 24, 38], [4, 8, 11, 18] should give [0, 4, 8, 11, 18, 19, 24, 38]
func mergeSortedArrays(array1: [Int], array2: [Int]) -> [Int] {
    // solution 1
//    if array1.isEmpty {
//        return array2
//    }
//    if array2.isEmpty {
//        return array1
//    }
//    var mergedArray: [Int] = []
//    mergedArray = array1 + array2
//    return mergedArray.sorted()

    // solution 2
    var mergedArray: [Int] = []
    var i = 0
    var j = 0
    if array1.isEmpty {
        return array2
    }
    if array2.isEmpty {
        return array1
    }

    // take elements one by one from each array and compare them which ever is smaller append it into the merged array
    while i < array1.count && j < array2.count {
        if array1[i] < array2[j] {
            mergedArray.append(array1[i])
            i += 1
        } else {
            mergedArray.append(array2[j])
            j += 1
        }
    }

    while i < array1.count {
        mergedArray.append(array1[i])
        i += 1
    }

    while j < array2.count {
        mergedArray.append(array2[j])
        j += 1
    }

    return mergedArray
}



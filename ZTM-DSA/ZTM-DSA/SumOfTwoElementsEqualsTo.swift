//
//  SumOfTwoElementsEqualsTo.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 23/02/2025.
//

import Foundation

func sumOfElementsEquals(array: [Int], sum: Int) -> Bool {
    for item in array {
        for innerItem in array {
            if item + innerItem == sum {
                return true
            }
        }
    }
    return false
    // O(n^2)
    //inefficient because of time complexity
}

func sumOfElementsEquals2(array: [Int], sum: Int) -> Bool {
    var mySet = Set<Int>()
    for item in array {
        if mySet.contains(item) {
            return true
        }
        mySet.insert(sum - item)
    }
    return false
}

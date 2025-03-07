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

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // solution 1
//    var currentNum = 0
//    var indices : [Int] = []
//    for i in 0...nums.count-1 {
//        currentNum = nums[i]
//        for j in i+1..<nums.count {
//            if currentNum + nums[j] == target {
//                indices.append(i)
//                indices.append(j)
//                break
//            }
//        }
//    }
//    return indices

    // solution 2
    var indices : [Int] = []
    var dict: [Int:Int] = [:]
    for (index, item) in nums.enumerated() {
        if dict.values.contains(item) {
            indices.append(dict.first(where: { $0.value == item })?.key ?? -1)
            indices.append(index)
        }
        dict[index] = target - item
    }
    return indices
}

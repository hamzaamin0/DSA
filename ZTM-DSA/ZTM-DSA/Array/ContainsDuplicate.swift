//
//  ContainsDuplicate.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 10/03/2025.
//

import Foundation
// [0, 3, 6, 7, 4, 6]
func containsDuplicate(_ array: [Int]) -> Bool {

    // solution 1: not the best one because of sorting overhead
    // O = nlogn
//    let sortedArray = array.sorted()
//    for i in 0...sortedArray.count-1 {
//        if sortedArray[i] == sortedArray[i+1] {
//            return true
//
//        }
//    }

    // solution 2: best solution because of Set use
    // O(n) 
    var set = Set<Int>()
    for i in 0...array.count-1 {
        if set.contains(array[i]) {
            return true

        }
        set.insert(array[i])
    }
    return false

}

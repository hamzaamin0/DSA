//
//  RotateArray.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 10/03/2025.
//

import Foundation

//Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
//
//
//
//Example 1:
//
//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//
//Input: nums = [-1,-100,3,99], k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]



func rotateArray(array: [Int], k: Int) -> [Int] {
    
    var rotatedArray = array
    // run a loop from last element upto k
    // add each element on the index to first index
    // move all elements to the right

    for _ in stride(from: rotatedArray.count-1, to: rotatedArray.count-k-1, by: -1) {

        let lastElement = rotatedArray.last
        rotatedArray.removeLast()
        rotatedArray.insert(lastElement ?? -1, at: 0)

    }

    return rotatedArray
}

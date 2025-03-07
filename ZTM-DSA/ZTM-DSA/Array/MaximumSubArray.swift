//
//  MaximumSubArray.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 07/03/2025.
//

import Foundation

//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: The subarray [4,-1,2,1] has the largest sum 6.
//maxSum = 0
//currSum = 0
//i = 3
//currItem = 4
// kadana's algorith solution / greedy approach
// O(n)
func maximumSubArray(_ array: [Int]) -> Int {
    var maxSum = array[0]
    var currSum = array[0]
    for i in 1...array.count - 1 {
        currSum = max(array[i], currSum + array[i])
        maxSum = max(currSum, maxSum)
    }
    return maxSum
}

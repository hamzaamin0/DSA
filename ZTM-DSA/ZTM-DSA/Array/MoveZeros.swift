//
//  MoveZeros.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 07/03/2025.
//

import Foundation

func moveZeros(array: inout [Int]) {
    // solution 1
//    for i in 0...array.count - 1 {
//        if array[i] == 0 {
//            array.remove(at: i)
//            array.append(0)
//        }
//    }

    // solution 2 - two pointer approach (optimal)

    var left = 0

    for i in 0...array.count - 1 {
        if array[i] != 0 {
            array.swapAt(left, i)
            left += 1
        }
    }

}

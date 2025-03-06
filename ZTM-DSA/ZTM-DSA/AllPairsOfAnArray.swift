//
//  PairOfEachElementInArray.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 23/02/2025.
//

import Foundation

func printAllPairsOf(array: [Int]) {

    for outerItem in array {
        for innerItem in array {
            debugPrint("\(outerItem)+\(innerItem)")
        }

    }
}

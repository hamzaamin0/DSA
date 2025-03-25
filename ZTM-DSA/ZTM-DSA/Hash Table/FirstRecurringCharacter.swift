//
//  FirstRecurringCharacter.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 25/03/2025.
//

import Foundation

//Problem Statement
//Given a string (or array), return the first recurring character. If there is no recurring character, return nil or an equivalent value.
//
//Example 1
//
//Input: "ABCA"
//Output: "A"
//'A' appears twice, and it is the first repeating character.
//
//Example 2
//
//Input: "BCABA"
//Output: "B"
//'B' appears twice before any other character repeats.
//
//Example 3
//
//Input: "ABCDEFG"
//Output: nil
//No character repeats.

func firstRecurringChar(array: [Int]) -> Int? {
    var set = Set<Int>()
    for item in array {
        if set.contains(item){
            return item
        }
        set.insert(item)
    }
    return nil
}

//
//  ContentView.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 19/02/2025.
//

import SwiftUI

struct ContentView: View {
    let array = [1, 2, 3, 6, 5]
    @State var myArray = MyArray<String>()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
//            printAllPairsOf(array: array)
//            debugPrint(sumOfElementsEquals(array: array, sum: 10))
//            debugPrint("MyArray is empty: \(myArray.isEmpty)")

//            myArray.push("hi")
//            myArray.push("you")
//            myArray.push("!")
//            debugPrint("MyArray: \(myArray), count: \(myArray.count)")
//            myArray.removeItem(at: 3)
//            debugPrint("MyArray: \(myArray), count: \(myArray.count)")
//            debugPrint("MyArray is empty: \(myArray.isEmpty)")
//            debugPrint("Get MyArray: \(myArray.getItem(at: 1))")

//            debugPrint(reverseString("hamza"))
//            debugPrint(mergeSortedArrays(array1: [0, 5, 14, 38], array2: [4, 8, 11, 18]))
//            debugPrint(twoSum([2,11,7,15], 9))
//            debugPrint(maximumSubArray([-2,1,-3,4,-1,2,1,-5,4]))

//            var testArray = [0, 3, 6, 0, 7, 4]
//            debugPrint("test array before: \(testArray)")
//            moveZeros(array: &testArray)
//            debugPrint("test array after: \(testArray)")

            debugPrint("contains duplicate: \(containsDuplicate([0, 3, 7, 4, 6, 0, 4]))")



        }
    }
}

#Preview {
    ContentView()
}



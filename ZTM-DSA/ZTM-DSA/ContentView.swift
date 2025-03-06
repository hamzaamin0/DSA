//
//  ContentView.swift
//  ZTM-DSA
//
//  Created by Hamza Amin on 19/02/2025.
//

import SwiftUI

struct ContentView: View {
    let array = [1, 2, 3, 6, 5]
    @State var myArray = MyArray<Int>()
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
            debugPrint("MyArray is empty: \(myArray.isEmpty)")

            myArray.push(5)
            myArray.push(8)
            myArray.push(17)
            debugPrint("MyArray: \(myArray), count: \(myArray.count)")
            myArray.pop()
            debugPrint("MyArray: \(myArray), count: \(myArray.count)")
            debugPrint("MyArray is empty: \(myArray.isEmpty)")
            debugPrint("Get MyArray: \(myArray.getItem(at: 1))")

        }
    }
}

#Preview {
    ContentView()
}



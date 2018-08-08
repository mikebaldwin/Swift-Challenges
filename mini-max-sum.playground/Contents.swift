//: Playground - noun: a place where people can play

import UIKit

// Mini-max Sum description: https://www.hackerrank.com/challenges/mini-max-sum/problem

let sampleInput = [1, 2, 3, 4, 5]

func miniMaxSum(arr: [Int]) -> Void {
    var minimumSum = 0
    var maximumSum = 0
    
    let sortedInput = arr.sorted()
    
    for index in 0..<4 {
        minimumSum += sortedInput[index]
    }
    for index in 1..<5 {
        maximumSum += sortedInput[index]
    }
    print("\(minimumSum) \(maximumSum)")
}

miniMaxSum(arr: sampleInput)

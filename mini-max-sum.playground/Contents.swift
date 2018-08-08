//: Playground - noun: a place where people can play

import UIKit

// Mini-max Sum description: https://www.hackerrank.com/challenges/mini-max-sum/problem

let sampleInput = [1, 2, 3, 5, 5]

func miniMaxSum(arr: [Int]) -> Void {
    var minimumSum = 0
    var maximumSum = 0
    
    // find the lowest numbers
    var lowestFourNumbers: [Int] = arr.sorted()
    lowestFourNumbers.removeLast()
    lowestFourNumbers.forEach { (number) in
        minimumSum += number
    }
    
    // find the highest numbers
    var highestFourNumbers: [Int] = arr.sorted()
    highestFourNumbers.removeFirst()
    highestFourNumbers.forEach { (number) in
        maximumSum += number
    }
    
    print("\(minimumSum) \(maximumSum)")
}

miniMaxSum(arr: sampleInput)

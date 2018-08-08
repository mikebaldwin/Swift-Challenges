//: Playground - noun: a place where people can play

import UIKit

// Mini-max Sum description: https://www.hackerrank.com/challenges/mini-max-sum/problem

let sampleInput = [1, 2, 3, 5, 5]

func miniMaxSum(arr: [Int]) -> Void {
    var minimumSum = 0
    var maximumSum = 0

    var lowestFourNumbers: [Int] = []
    var highestFourNumbers: [Int] = []
    
    // find the lowest numbers
    for firstNumber in arr {
        if arr.count == 4 {
            break
        }
        for secondNumber in arr where firstNumber < secondNumber {
            lowestFourNumbers.append(firstNumber)
            break
        }
    }
    
    // find the highest numbers
    for firstNumber in arr {
        if arr.count == 4 {
            break
        }
        for secondNumber in arr where firstNumber > secondNumber {
            highestFourNumbers.append(firstNumber)
            break
        }
    }
    
    // sum the minimums
    for number in lowestFourNumbers {
        minimumSum += number
    }

    // sum the maximums
    for number in highestFourNumbers {
        maximumSum += number
    }
    
    print("\(minimumSum) \(maximumSum)")
}

miniMaxSum(arr: sampleInput)

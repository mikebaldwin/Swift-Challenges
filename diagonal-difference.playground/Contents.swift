//: Playground - noun: a place where people can play

import UIKit

// Problem description: https://www.hackerrank.com/challenges/diagonal-difference/problem
let testCase1 = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

let testCase2 = [
    [0, 24, 6],
    [13, 12, 6],
    [5, 4, 3]
]

let testCase3 = [
    [1, 2, 3],
    [4, 5, 6],
    [9, 8, 9]
]

// TODO: extend to handle square matrices that are larger than 3 x 3

func diagonalDifference(arr: [[Int]]) -> Int {
    var primaryDiagonalsSum = 0
    var secondaryDiagonalsSum = 0
    var difference = 0
    
    let primaryDiagonalIndices = [0, 1, 2]
    let secondaryDiagonalIndeces = [2, 1, 0]
    
    // sum the primary diagonals
    for row in 0..<arr.count {
        let index = primaryDiagonalIndices[row]
        primaryDiagonalsSum += arr[row][index]
    }
    
    // sum the secondary diagonals
    for row in 0..<arr.count {
        let index = secondaryDiagonalIndeces[row]
        secondaryDiagonalsSum += arr[row][index]
    }
    
    // subtract the sums
    difference = primaryDiagonalsSum - secondaryDiagonalsSum
    
    // return absolute value
    return abs(difference)
}

let testCase1Result = diagonalDifference(arr: testCase1)
assert(testCase1Result == 15)

let testCase2Result = diagonalDifference(arr: testCase2)
assert(testCase2Result == 8)

let testCase3Result = diagonalDifference(arr: testCase3)
assert(testCase3Result == 2)

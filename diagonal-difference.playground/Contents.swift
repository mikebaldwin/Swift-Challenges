//: Playground - noun: a place where people can play

import UIKit

// Problem description: https://www.hackerrank.com/challenges/diagonal-difference/problem
let testCase1 = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

let testCase2 = [
    [0,  24, 6,  4,  12, 9],
    [13, 12, 6,  33, 6,  22],
    [5,  4,  3,  5,  0,  1],
    [1,  9,  15, 12, 13, 16],
    [0,  5,  22, 9,  13, 9],
    [22, 5,  23, 23, 12, 6]
] // 16

let testCase3 = [
    [1, 2, 3],
    [4, 5, 6],
    [9, 8, 9]
]

func diagonalDifference(arr: [[Int]]) -> Int {
    var difference = 0
    
    let primaryDiagonalIndices = buildPrimaryDiagonalIndices(matrix: arr)
    let secondaryDiagonalIndeces = buildSecondaryDiagonalIndices(from: primaryDiagonalIndices)
    
    let primaryDiagonalsSum = sumOfValues(in: arr, at: primaryDiagonalIndices)
    let secondaryDiagonalsSum = sumOfValues(in: arr, at: secondaryDiagonalIndeces)
    
    difference = primaryDiagonalsSum - secondaryDiagonalsSum
    
    return abs(difference)
}

func buildPrimaryDiagonalIndices(matrix: [[Int]]) -> [Int] {
    var primaryDiagonalIndices: [Int] = []
    for index in 0..<matrix[0].count {
        primaryDiagonalIndices.append(index)
    }
    return primaryDiagonalIndices
}

func buildSecondaryDiagonalIndices(from primaryDiagonalIndices: [Int]) -> [Int] {
    var secondaryDiagonalIndeces: [Int] = []
    var reverseIndex = primaryDiagonalIndices.count - 1
    while reverseIndex >= 0 {
        secondaryDiagonalIndeces.append(primaryDiagonalIndices[reverseIndex])
        reverseIndex -= 1
    }
    return secondaryDiagonalIndeces
}

func sumOfValues(in matrix: [[Int]], at diagonals: [Int]) -> Int {
    var diagonalsSum = 0
    for row in 0..<matrix.count {
        let index = diagonals[row]
        diagonalsSum += matrix[row][index]
    }
    return diagonalsSum
}

let testCase1Result = diagonalDifference(arr: testCase1)
assert(testCase1Result == 15)

let testCase2Result = diagonalDifference(arr: testCase2)
assert(testCase2Result == 16)

let testCase3Result = diagonalDifference(arr: testCase3)
assert(testCase3Result == 2)

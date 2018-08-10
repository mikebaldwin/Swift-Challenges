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
    let primaryDiagonalIndices = buildPrimaryDiagonalIndices(matrix: arr)
    let secondaryDiagonalIndeces = buildSecondaryDiagonalIndices(from: primaryDiagonalIndices)
    
    let primaryDiagonalsSum = sumOfValues(in: arr, at: primaryDiagonalIndices)
    let secondaryDiagonalsSum = sumOfValues(in: arr, at: secondaryDiagonalIndeces)
    
    let absoluteDifference = abs(primaryDiagonalsSum - secondaryDiagonalsSum)
    
    return absoluteDifference
}

func buildPrimaryDiagonalIndices(matrix: [[Int]]) -> [Int] {
    // Returns an array of contiguous Ints that map to the number of rows in the matrix
    var primaryDiagonalIndices: [Int] = []
    for index in 0..<matrix[0].count {
        primaryDiagonalIndices.append(index)
    }
    return primaryDiagonalIndices
}

func buildSecondaryDiagonalIndices(from primaryDiagonalIndices: [Int]) -> [Int] {
    // Reverses the array returned from buildPrimaryIndices()
    var secondaryDiagonalIndeces: [Int] = []
    var index = primaryDiagonalIndices.count - 1 // we'll be traversing the array from bottom to top
    while index >= 0 {
        secondaryDiagonalIndeces.append(primaryDiagonalIndices[index])
        index -= 1
    }
    return secondaryDiagonalIndeces
}

func sumOfValues(in matrix: [[Int]], at diagonals: [Int]) -> Int {
    var sum = 0
    for row in 0..<matrix.count {
        let index = diagonals[row]
        sum += matrix[row][index]
    }
    return sum
}

let testCase1Result = diagonalDifference(arr: testCase1)
assert(testCase1Result == 15)

let testCase2Result = diagonalDifference(arr: testCase2)
assert(testCase2Result == 16)

let testCase3Result = diagonalDifference(arr: testCase3)
assert(testCase3Result == 2)

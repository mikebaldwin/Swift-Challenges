//: Playground - noun: a place where people can play

import UIKit

// Compare the Triplets
// https://www.hackerrank.com/challenges/compare-the-triplets/problem

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aPoints = 0
    var bPoints = 0
    
    for index in 0..<3 {
        if a[index] > b[index] {
            aPoints += 1
        }
        if a[index] < b[index] {
            bPoints += 1
        }
        // If a[index] and b[index] are equal, no points awarded
    }
    
    return [aPoints, bPoints]
}

assert(compareTriplets(a: [1, 2, 3], b: [3, 2, 1]) == [1, 1])
assert(compareTriplets(a: [5, 6, 7], b: [3, 6, 10]) == [1, 1])
assert(compareTriplets(a: [17, 28, 30], b: [99, 16, 8]) == [2, 1])

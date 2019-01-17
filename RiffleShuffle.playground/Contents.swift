//: Playground - noun: a place where people can play

import Foundation

// Single Riffle exercise from interviewCake
// https://www.interviewcake.com/question/swift/single-riffle-check?course=fc1&section=array-and-string-manipulation

func isSingleRiffle(half1: [Int], half2: [Int], shuffleDeck: [Int]) -> Bool {
    var half1Index = 0
    var half2Index = 0
    let half1MaxIndex = half1[half1.count - 1]
    let half2MaxIndex = half2[half2.count - 1]
    
    for card in shuffleDeck {
        if half1Index <= half1MaxIndex && card == half1[half1Index]{
            half1Index += 1
        } else if half2Index <= half2MaxIndex && card == half2[half2Index]{
            half2Index += 1
        } else {
            return false
        }
    }
    return true
}

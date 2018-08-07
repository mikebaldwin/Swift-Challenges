//: Playground - noun: a place where people can play

import UIKit

// Problem description: https://www.hackerrank.com/challenges/plus-minus/problem?h_r=next-challenge&h_v=zen

let sampleInput = [-4, 3, -9, 0, 4, 1]

func plusMinus(arr: [Int]) -> Void {
    var lookup: [String: Int] = [
        "positive" : 0,
        "negative" : 0,
        "zero" : 0
    ]
    for number in arr {
        if number > 0 {
            if let count = lookup["positive"] {
                lookup["positive"] = count + 1
            }
        }
        if number < 0 {
            if let count = lookup["negative"] {
                lookup["negative"] = count + 1
            }
        }
        if number == 0 {
            if let count = lookup["zero"] {
                lookup["zero"] = count + 1
            }
        }
    }
    let size = arr.count
    if let positiveRatio = lookup["positive"] {
        print(String(format: "%.6f", Double(positiveRatio) / Double(size)))
    }
    if let negativeRatio = lookup["negative"] {
        print(String(format: "%.6f", Double(negativeRatio) / Double(size)))
    }
    if let zeroRatio = lookup["zero"] {
        print(String(format: "%.6f", Double(zeroRatio) / Double(size)))
    }
    
}

plusMinus(arr: sampleInput)
